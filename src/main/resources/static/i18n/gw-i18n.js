/*
 * gw-i18n.js — GewuMind Boot 运行时语言包（不依赖前端源码）
 *
 * 用法：
 *   <script src="./i18n/gw-i18n.js"></script>
 *   ?lang=en 或 localStorage.gw_lang='en'
 *
 * 语言包：
 *   POST /api/i18n/pack {"lang":"en"}  → 读取 data/i18n/en.json
 *   { "translations": { "中文": "English" }, "patterns": [ { "regex": "...", "replace": "..." } ] }
 *
 * 说明：DOM 级 best-effort，只翻译词典命中的文本/属性；不翻译业务数据。
 */
(function () {
  'use strict';

  var params = new URLSearchParams(window.location.search);
  var lang = params.get('lang');
  try {
    if (!lang) lang = localStorage.getItem('gw_lang');
    if (!lang) {
      var nav = (navigator.language || 'zh').toLowerCase();
      lang = nav.indexOf('zh') === 0 ? 'zh' : nav.split('-')[0];
    }
    localStorage.setItem('gw_lang', lang);
  } catch (e) { /* localStorage 不可用 */ }

  lang = String(lang || 'zh').replace('_', '-');
  document.documentElement.setAttribute('lang', lang);
  if (lang.indexOf('zh') === 0) return;

  // 让后端按当前语言返回消息（axios 走 XHR）
  try {
    var origOpen = XMLHttpRequest.prototype.open;
    var origSend = XMLHttpRequest.prototype.send;
    XMLHttpRequest.prototype.open = function (method, url) {
      this.__gwUrl = url;
      return origOpen.apply(this, arguments);
    };
    XMLHttpRequest.prototype.send = function (body) {
      try {
        if (this.__gwUrl && String(this.__gwUrl).indexOf('/api/') !== -1) {
          this.setRequestHeader('X-Lang', lang);
        }
      } catch (e) { /* header 已发送 */ }
      return origSend.call(this, body);
    };
  } catch (e) { /* 非浏览器环境 */ }

  var config = window.GW_I18N || {};
  var url = config.url || '/api/i18n/pack';

  function start(pack) {
    if (!pack) return;
    var dict = pack.translations || pack;
    var patterns = (pack.patterns || []).map(function (p) {
      try { return { re: new RegExp(p.regex), replace: p.replace }; } catch (e) { return null; }
    }).filter(Boolean);

    function translate(text) {
      if (!text) return null;
      if (Object.prototype.hasOwnProperty.call(dict, text)) return dict[text];
      for (var i = 0; i < patterns.length; i++) {
        var match = patterns[i].re.exec(text);
        if (!match) continue;
        var replacement = patterns[i].replace.replace(/\$(\d+)/g, function (_, n) {
          var group = match[parseInt(n, 10)];
          return group != null && dict[group] != null ? dict[group] : (group || '');
        });
        return text.replace(patterns[i].re, function () { return replacement; });
      }
      return null;
    }

    var SKIP = /^(SCRIPT|STYLE|CODE|PRE|TEXTAREA)$/;

    function skipElement(el) {
      if (!el || !el.tagName) return false;
      if (SKIP.test(el.tagName)) return true;
      if (el.hasAttribute('data-no-i18n')) return true;
      if (el.getAttribute('contenteditable') === 'true') return true;
      return false;
    }

    function translateText(node) {
      var parent = node.parentElement;
      if (!parent || skipElement(parent)) return;
      var raw = node.nodeValue;
      var text = raw.trim();
      if (!text) return;
      var out = translate(text);
      if (out == null || out === text) return;
      node.nodeValue = raw.replace(text, out);
    }

    function translateAttrs(el) {
      ['placeholder', 'title', 'aria-label', 'alt'].forEach(function (attr) {
        var value = el.getAttribute(attr);
        if (!value) return;
        var text = value.trim();
        var out = translate(text);
        if (out != null && out !== text) el.setAttribute(attr, out);
      });
    }

    function walk(root) {
      if (!root) return;
      if (root.nodeType === 3) { translateText(root); return; }
      if (root.nodeType !== 1) return;
      if (skipElement(root)) return;
      translateAttrs(root);
      for (var child = root.firstChild; child; child = child.nextSibling) walk(child);
    }

    if (document.body) walk(document.body);
    var observer = new MutationObserver(function (mutations) {
      mutations.forEach(function (m) {
        if (m.type === 'characterData') translateText(m.target);
        else if (m.addedNodes) {
          for (var i = 0; i < m.addedNodes.length; i++) walk(m.addedNodes[i]);
        }
      });
    });
    observer.observe(document.body || document.documentElement, {
      childList: true, subtree: true, characterData: true
    });
  }

  function fallback() {
    if (lang !== 'en') return;
    fetch('./i18n/en.json', { cache: 'no-cache' })
      .then(function (r) { return r.ok ? r.json() : null; })
      .then(start)
      .catch(function () { /* 没有兜底包 */ });
  }

  fetch(url, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', 'X-Lang': lang },
    body: JSON.stringify({ lang: lang })
  }).then(function (r) { return r.ok ? r.json() : null; })
    .then(function (res) {
      if (!res) return fallback();
      var data = res && res.data !== undefined ? res.data : res;
      if (typeof data === 'string') {
        try { data = JSON.parse(data); } catch (e) { return fallback(); }
      }
      if (!data) return fallback();
      start(data);
    })
    .catch(fallback);
})();
