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

var points : [NSPoint] = [] // create empty list (array) of type NSPoint
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = Color(hue: 80, saturation: 80, brightness: 80, alpha: 80)
points.append(NSPoint(x: 400, y: 300) )
    points.append(NSPoint(x: 300, y: 300) )
    points.append(NSPoint(x: 350, y: 150) )
canvas.drawCustomShape(with: points)


canvas.fillColor = Color(hue: 30, saturation: 90, brightness: 100, alpha: 90)
canvas.drawRoundedRectangle(centreX: 275, centreY: 225, width: 100, height: 100)


canvas.fillColor = Color(hue: 240, saturation: 90, brightness: 100, alpha: 90)
canvas.drawRectangle(centreX: 200, centreY: 225, width: 100, height: 250)

canvas.fillColor = Color(hue: 0, saturation: 90, brightness: 100, alpha: 90)
canvas.drawEllipse(centreX: 130, centreY: 175, width: 100, height: 100)


// Replace this comment and add your code below 


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
