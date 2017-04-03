/*:
 [Previous](@previous)
 
 # Challenge
 
 Mr. Gordon was at IKEA a few weeks ago and noticed this pattern:
 
 ![pattern.jpg](pattern.jpg "pattern")
 
 Use any of the concepts you have learned so far in this course to reproduce the wallpaper pattern shown above.
 
 - note: The photo was not taken "straight on" against the wall, so the image has perspective.  You do not need to reproduce that part of the image.  In other words, no need to create the appearance of "depth", just reproduce colours and shapes.
 
 - callout(Hint): Look for elements of repetition in the pattern. Try to reproduce a portion of the image, then simply *repeat* the pattern.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas

let canvas = Canvas(width: 540, height: 540)
canvas.drawShapesWithFill = false
for y in stride(from: 0, through: 520, by: 270){
    for x in stride(from: 0, through: 520, by: 80){
        
        canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: 40 + x, centreY: 40 + y, width: 60, height: 60, borderWidth: 10)
        canvas.borderColor = Color.orange
        canvas.drawEllipse(centreX: 40 + x, centreY: 40 + y, width: 40, height: 40, borderWidth: 10)
        canvas.borderColor = Color.yellow
        canvas.drawEllipse(centreX: 40 + x, centreY: 40 + y, width: 20, height: 20, borderWidth: 10)
        
        canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: 40 + x, centreY: 220 + y, width: 60, height: 60, borderWidth: 10)
        
        
        canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: 40 + x, centreY: 220 + y, width: 60, height: 60, borderWidth: 10)
        canvas.borderColor = Color.orange
        canvas.drawEllipse(centreX: 40 + x, centreY: 220 + y, width: 40, height: 40, borderWidth: 10)
        canvas.borderColor = Color.yellow
        canvas.drawEllipse(centreX: 40 + x, centreY: 220 + y, width: 20, height: 20, borderWidth: 10)
        
        
    }
}

canvas.drawShapesWithFill = false
for y in stride(from: 0, through: 520, by: 270){
    for x in stride(from: 0, through: 520, by: 80){
        
        canvas.borderColor = Color.yellow
        canvas.drawEllipse(centreX: 0 + x, centreY: 90 + y, width: 60, height: 60, borderWidth: 10)
        canvas.borderColor = Color.orange
        canvas.drawEllipse(centreX: 0 + x, centreY: 90 + y, width: 40, height: 40, borderWidth: 10)
        canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: 0 + x, centreY: 90 + y, width: 20, height: 20, borderWidth: 10)
        
        canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: 0 + x, centreY: 170 + y, width: 60, height: 60, borderWidth: 10)
        
        
        canvas.borderColor = Color.yellow
        canvas.drawEllipse(centreX: 0 + x, centreY: 170 + y, width: 60, height: 60, borderWidth: 10)
        canvas.borderColor = Color.orange
        canvas.drawEllipse(centreX: 0 + x, centreY: 170 + y, width: 40, height: 40, borderWidth: 10)
        canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: 0 + x, centreY: 170 + y, width: 20, height: 20, borderWidth: 10)
        
        
    }
}

canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.white
canvas.drawLine(fromX: 0, fromY: 65, toX: 540, toY: 65, lineWidth: 50)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
