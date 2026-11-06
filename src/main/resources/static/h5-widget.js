/*!
 * GewuMind H5 客服嵌入脚本
 *
 * 在客户站点引入：
 *   <script src="https://<gewumind-server>/h5-widget.js"></script>
 *   <script>
 *     GewuMindH5.init({
 *       server: 'https://<gewumind-server>',   // GewuMind 服务地址（含协议，不含末尾 /）
 *       channel: 'c1000000-0000-4000-8000-000000000001',  // 渠道ID
 *       position: 'right'                        // 悬浮按钮位置：right(默认) / left
 *     });
 *   </script>
 *
 * 说明：
 *   - 客服页面通过 iframe 加载 <server>/#/h5/chat?channel=<id>，与 GewuMind 服务同源，无跨域问题。
 *   - 渠道若配置了「允许嵌入域名」，客服页会校验当前站点（document.referrer）是否在白名单内，
 *     不在则拒绝加载。
 */
(function (global) {
    'use strict';

    var instance = null;

    function el(tag, cssText) {
        var e = document.createElement(tag);
        if (cssText) e.style.cssText = cssText;
        return e;
    }

    function init(opts) {
        if (instance) { instance.destroy(); }
        opts = opts || {};
        var server = (opts.server || '').replace(/\/+$/, '');
        var channel = opts.channel || '';
        if (!server || !channel) {
            console.warn('[GewuMindH5] 缺少 server 或 channel 配置');
            return null;
        }
        var position = opts.position === 'left' ? 'left' : 'right';
        var src = server + '/#/h5/chat?channel=' + encodeURIComponent(channel);

        // 悬浮按钮
        var btn = el('button',
            'position:fixed;' + (position === 'left' ? 'left:20px' : 'right:20px') +
            ';bottom:24px;z-index:99999;width:52px;height:52px;border-radius:50%;' +
            'border:none;cursor:pointer;box-shadow:0 4px 14px rgba(0,0,0,0.25);' +
            'background:' + (opts.color || '#1677ff') + ';display:flex;align-items:center;justify-content:center;');
        btn.innerHTML =
            '<svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">' +
            '<path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"/></svg>';
        btn.setAttribute('aria-label', '在线客服');

        // 客服面板（iframe）
        var panel = el('div',
            'position:fixed;' + (position === 'left' ? 'left:20px' : 'right:20px') +
            ';bottom:88px;z-index:99999;width:340px;height:520px;max-width:92vw;max-height:78vh;' +
            'border-radius:12px;overflow:hidden;box-shadow:0 8px 30px rgba(0,0,0,0.3);' +
            'background:#fff;display:none;');
        var frame = el('iframe', 'width:100%;height:100%;border:none;');
        frame.setAttribute('title', '在线客服');
        panel.appendChild(frame);

        var opened = false;
        function toggle() {
            opened = !opened;
            panel.style.display = opened ? 'block' : 'none';
            if (opened && !frame.src) frame.src = src; // 首次打开才加载
        }
        btn.addEventListener('click', toggle);

        document.body.appendChild(btn);
        document.body.appendChild(panel);

        instance = {
            destroy: function () {
                btn.remove();
                panel.remove();
                instance = null;
            }
        };
        return instance;
    }

    global.GewuMindH5 = { init: init };
})(window);
