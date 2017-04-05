/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence
 
 Some new shape types and options have been added to the Canvas class.
 
 Use this new functionality, and your [knowledge of colour](http://russellgordon.ca/rsgc/2016-17/ics2o/HSB_Colour_Model_-_Summary_-_Swift_3.pdf), to reproduce this abstract version of the eBay logo:
 
 ![new_ebay_logo.png](new_ebay_logo.jpg "Overlapping Shapes Logo")
 
 Color and alpha (transparency) matter.
 
 Try reproducing this image for practice.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 400)

canvas.drawShapesWithBorders = false

// Make Red Circle
canvas.fillColor = Color(hue: 2, saturation: 100, brightness: 100, alpha: 80)
canvas.drawEllipse(centreX: 100, centreY: 100, width: 150, height: 150, borderWidth: 100)
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 850, alpha: 20)
// Draw Rectangle with color blue

// Draw Yellow Rounded rectangle
canvas.fillColor = Color.yellow

canvas.drawRoundedRectangle(centreX: 270, centreY: 150, width: 100, height: 125)

// Draw a triangle using custom shape
var points : [NSPoint] = [] // create empty list (array) of type NSPoint
canvas.fillColor = Color(hue: 125, saturation: 100, brightness: 64, alpha: 50)

points.append( NSPoint(x: 450, y: 250) )
points.append( NSPoint(x: 365, y: 75) )
points.append( NSPoint(x: 280, y: 250) )
canvas.drawCustomShape(with: points)

canvas.fillColor = Color(hue: 235, saturation: 100, brightness: 100, alpha: 50)
canvas.drawRectangle(bottomLeftX: 150, bottomLeftY: 0, width: 100, height: 275)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
