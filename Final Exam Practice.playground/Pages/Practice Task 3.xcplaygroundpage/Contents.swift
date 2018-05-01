//: # Exam Prep 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![undertones-no-grid](undertones-no-grid.png "Undertones")
 ![undertones-with-grid](undertones-with-grid.png "Undertones")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightGrey = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
let deepRed = Color(hue: 7, saturation: 97, brightness: 72, alpha: 100)

// Begin your solution here... 



canvas.drawShapesWithFill
canvas.fillColor = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)


canvas.textColor = Color(hue: 7, saturation: 97, brightness: 72, alpha: 100)
canvas.drawText(message: "straight music presents", size: 10, x: 20, y: 555)
canvas.drawText(message: "the undertones", size: 10, x: 20, y: 545)
canvas.drawText(message: "with special guests", size: 10, x: 20, y: 525)
canvas.drawText(message: "the chords", size: 10, x: 20, y: 515)
canvas.drawText(message: "victoria hall hanley", size: 10, x: 150, y: 555)
canvas.drawText(message: "stroke-on-trent, england", size: 10, x: 150, y: 545)
canvas.drawText(message: "tuesday", size: 10, x: 150, y: 525)
canvas.drawText(message: "june 5 1979/7:30 pm", size: 10, x: 150, y: 515)
canvas.drawText(message: "advance tickets: ￡2.00", size: 10, x: 280, y: 555)


canvas.drawAxes()



// moves the origin
canvas.translate(byX: 20, byY: 400)

canvas.textColor = Color.black
canvas.drawText(message: "undertones", size: 68, x: -4, y: -30)


// Where is the origin?
canvas.drawAxes()


//Loop 19 times
for counter in 1...19{
canvas.rotate(by: -5)
 //draw text
    canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha:100-counter*5)
    canvas.drawText(message: "undertones", size: 68, x: -4, y: -30, kerning: 0)
}






/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
