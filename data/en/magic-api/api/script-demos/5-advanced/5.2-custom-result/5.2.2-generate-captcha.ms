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
// Demonstrates generating an image captcha in magic-script with the Java AWT library
// Uses import to load the Java standard library and generate images server-side
// Includes random characters, rotation, interference lines and noise as anti-cracking measures

// ===== Step 1: import Java graphics/IO classes =====
import 'java.awt.image.BufferedImage' as BufferedImage    // image buffer
import 'java.awt.Color' as Color                          // color
import 'java.awt.Font' as Font                            // font
import 'java.io.ByteArrayOutputStream' as ByteArrayOutputStream  // byte output stream
import 'java.util.Random' as Random                       // random number generator
import 'javax.imageio.ImageIO' as ImageIO                 // image encoding output
import response                                           // return an image response
import log                                                // logger output

// ===== Step 2: create a blank image =====
var width = 200                                            // image width
var height = 69                                            // image height
var image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB)  // create an RGB image
var graphics = image.getGraphics()                         // get the drawing context

// set and fill a white background
graphics.setColor(Color.WHITE)
graphics.fillRect(0, 0, width, height)

// set the font: Microsoft YaHei, bold, size 40
graphics.setFont(new Font("Microsoft YaHei", Font.BOLD, 40))

// ===== Step 3: prepare the captcha character set and random tools =====
// drop easily confused characters (such as 0/O, 1/l/I)
var letter = '123456789abcdefghijklmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ'
var random = new Random()

// define a function that generates a random color
var randomColor = () => new Color(random.nextInt(256), random.nextInt(256), random.nextInt(256))

// ===== Step 4: draw the captcha character by character =====
var x = 10                                                 // starting x coordinate of the current character
var code = ''                                              // record the generated captcha string (for later verification)

for (i in range(0, 4)) {                                   // loop 4 times to generate a 4-character captcha
    graphics.setColor(randomColor())                        // use a random color for each character

    var degree = random.nextInt() % 30                      // random rotation angle (-30° to 30°)
    var ch = letter.charAt(random.nextInt(letter.length())) // pick a random character from the set
    code = code + ch                                        // append to the captcha string

    graphics.rotate(degree * Math.PI / 180, x, 45)          // rotate the coordinate system (degrees to radians)
    graphics.drawString(String.valueOf(ch), x, 45)          // draw the character at (x, 45)
    graphics.rotate(-degree * Math.PI / 180, x, 45)         // restore the coordinate system

    x = x + 48                                              // move to the next character position
}

log.info('Generated captcha: {}', code)                           // log the captcha on the server (for debugging)

// ===== Step 5: draw interference lines and noise =====
for (i in range(0, 6)) {                                   // draw 6 random interference lines
    graphics.setColor(randomColor())
    graphics.drawLine(
        random.nextInt(width), random.nextInt(height),      // start point
        random.nextInt(width), random.nextInt(height)       // end point
    )
}

for (i in range(0, 30)) {                                  // draw 30 random noise dots
    graphics.setColor(randomColor())
    graphics.fillRect(random.nextInt(width), random.nextInt(height), 2, 2)  // 2x2 pixels
}

graphics.dispose()                                         // release drawing resources

// ===== Step 6: encode the image as a PNG byte stream and return it =====
var baos = new ByteArrayOutputStream()
ImageIO.write(image, "png", baos)                          // write the image in PNG format
baos.flush()
baos.close()

return response.image(baos.toByteArray(), 'image/png')     // return an image response (browsers display it directly)
