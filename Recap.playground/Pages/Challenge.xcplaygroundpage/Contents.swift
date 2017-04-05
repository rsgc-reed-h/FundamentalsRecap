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

//Black to yellow circles
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
    
    //yellow to black circles
    canvas.drawShapesWithFill = false
    for y in stride(from: 0, through: 540, by: 270){
        for x in stride(from: 0, through: 540, by: 80){
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
    //Background that creates aboce circles to become semi circles
    canvas.borderColor = Color.white
    canvas.drawRectangle(centreX: 270, centreY: 65, width: 540, height: 0, borderWidth: 55)
    
    canvas.borderColor = Color.white
    canvas.drawRectangle(centreX: 270, centreY: 195, width: 540, height: 0, borderWidth: 55)
    
    canvas.borderColor = Color.white
    canvas.drawRectangle(centreX: 270, centreY: 335, width: 540, height: 0, borderWidth: 55)
    
    canvas.borderColor = Color.white
    canvas.drawRectangle(centreX: 270, centreY: 465, width: 540, height: 0, borderWidth: 55)
    
////    //black lines on bottom row
    for x in stride(from: 10, through: 540, by: 80) {
        canvas.lineColor = Color.black
        canvas.drawLine(fromX: x, fromY: 88, toX: x, toY: 42, lineWidth: 10)
    }
    for x in stride(from: 70, through: 540, by: 80){
        canvas.lineColor = Color.black
        canvas.drawLine(fromX: x, fromY: 88, toX: x, toY: 42, lineWidth: 10)
    }
//    //orange line on bottom row
    for z in stride(from: 88, to: 260, by: 130){
    for y in stride(from: 42, through: 260, by: 130){
        for x in stride(from: 20, through: 540, by: 40){
            canvas.lineColor = Color.orange
            canvas.drawLine(fromX: x, fromY: y, toX: x, toY: z, lineWidth: 10)
        }
    }
    }
//////    //yellow lines on bottom row
    for x in stride(from: 30, through: 540, by: 80){
        canvas.lineColor = Color.yellow
        canvas.drawLine(fromX: x, fromY: 88, toX: x, toY: 42, lineWidth: 10)
    }
   //yellow lines on the bottom
    for x in stride(from: 50, through: 540, by: 80){
        canvas.lineColor = Color.yellow
        canvas.drawLine(fromX: x, fromY: 88, toX: x, toY: 42, lineWidth: 10)
    }
}

PlaygroundPage.current.liveView = canvas.imageView