{
  "properties": {},
  "id": "c7f7004a8e104663aa04361587bfb6b7",
  "script": null,
  "groupId": "2b0ce800b6c543efa284ae695e14e4eb",
  "name": "5.2.2 Generate Captcha",
  "createTime": null,
  "updateTime": 1679918730836,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "image",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== Purpose =====
// 演示使用 Java AWT 图形库在 magic-script 中生成图片验证码
// 利用 import 导入 Java 标准库实现服务器端图片生成
// 包含：随机字符、旋转、干扰线、噪点等防破解机制

// ===== 第 1 步：导入 Java 图形/IO 相关类 =====
import 'java.awt.image.BufferedImage' as BufferedImage    // 图片缓冲区
import 'java.awt.Color' as Color                          // 颜色
import 'java.awt.Font' as Font                            // 字体
import 'java.io.ByteArrayOutputStream' as ByteArrayOutputStream  // 字节输出流
import 'java.util.Random' as Random                       // 随机数
import 'javax.imageio.ImageIO' as ImageIO                 // 图片编码输出
import response                                           // 返回图片响应
import log                                                // Log输出

// ===== 第 2 步：创建空白图片 =====
var width = 200                                            // 图片宽度
var height = 69                                            // 图片高度
var image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB)  // 创建 RGB 图片
var graphics = image.getGraphics()                         // 获取绘图上下文

// 设置白色背景并填充
graphics.setColor(Color.WHITE)
graphics.fillRect(0, 0, width, height)

// 设置字体：Microsoft YaHei，粗体，40 号
graphics.setFont(new Font("Microsoft YaHei", Font.BOLD, 40))

// ===== 第 3 步：准备验证码字符集及随机工具 =====
// 去掉容易混淆的字符（如 0/O、1/l/I）
var letter = '123456789abcdefghijklmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ'
var random = new Random()

// 定义生成随机颜色的函数
var randomColor = () => new Color(random.nextInt(256), random.nextInt(256), random.nextInt(256))

// ===== 第 4 步：逐字符绘制验证码 =====
var x = 10                                                 // 当前字符的 x 坐标起始值
var code = ''                                              // 记录生成的验证码字符串（用于后续校验）

for (i in range(0, 4)) {                                   // 循环 4 次，生成 4 位验证码
    graphics.setColor(randomColor())                        // 每个字符使用随机颜色

    var degree = random.nextInt() % 30                      // 随机旋转角度（-30° ~ 30°）
    var ch = letter.charAt(random.nextInt(letter.length())) // 从字符集中随机取一个字符
    code = code + ch                                        // 拼接到验证码字符串

    graphics.rotate(degree * Math.PI / 180, x, 45)          // 旋转坐标系（度转弧度）
    graphics.drawString(String.valueOf(ch), x, 45)          // 在 (x, 45) 位置绘制字符
    graphics.rotate(-degree * Math.PI / 180, x, 45)         // 恢复坐标系

    x = x + 48                                              // 移动到下一个字符位置
}

log.info('Generated captcha: {}', code)                           // 服务端Log记录验证码（调试用）

// ===== 第 5 步：绘制干扰线和噪点 =====
for (i in range(0, 6)) {                                   // 绘制 6 条随机干扰线
    graphics.setColor(randomColor())
    graphics.drawLine(
        random.nextInt(width), random.nextInt(height),      // 起点
        random.nextInt(width), random.nextInt(height)       // 终点
    )
}

for (i in range(0, 30)) {                                  // 绘制 30 个随机噪点
    graphics.setColor(randomColor())
    graphics.fillRect(random.nextInt(width), random.nextInt(height), 2, 2)  // 2x2 像素
}

graphics.dispose()                                         // 释放绘图资源

// ===== 第 6 步：将图片编码为 PNG 字节流并返回 =====
var baos = new ByteArrayOutputStream()
ImageIO.write(image, "png", baos)                          // 将图片写入 PNG 格式
baos.flush()
baos.close()

return response.image(baos.toByteArray(), 'image/png')     // 返回图片响应（浏览器可直接显示）
