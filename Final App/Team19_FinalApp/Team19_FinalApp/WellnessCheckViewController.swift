//
//  WellnessCheckViewController.swift
//  Team19_FinalApp
//
//  Created by Carlos Sandoval on 11/21/23.
//

import UIKit

class WellnessCheckViewController: UIViewController {
    
    //boolean variables used for the "write"/"draw" options
    var WriteOption:Bool = true
    var DrawOption:Bool = false
    
    //variables for drawing on screen
    //default is black
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false
    
    
    @IBOutlet weak var text: UITextView!
    @IBOutlet weak var drawingTemplate: UIImageView!
    
    
    //used for "done" button in navigation bar
    @objc func handleBackButtonTapped() {
          self.navigationController?.popViewController(animated: true)
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //adding the "Done" button in navigation bar
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(handleBackButtonTapped))
    }
    
    
    //function to draw
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      guard let touch = touches.first else {
        return
      }
      swiped = false
      lastPoint = touch.location(in: view)
    }
    
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
      UIGraphicsBeginImageContext(view.frame.size)
      guard let context = UIGraphicsGetCurrentContext() else {
        return
      }
        drawingTemplate.image?.draw(in: view.bounds)
        
      context.move(to: fromPoint)
      context.addLine(to: toPoint)
      
      context.setLineCap(.round)
      context.setBlendMode(.normal)
      context.setLineWidth(brushWidth)
      context.setStrokeColor(color.cgColor)
      
        context.strokePath()
      
        drawingTemplate.image = UIGraphicsGetImageFromCurrentImageContext()
        drawingTemplate.alpha = opacity
      UIGraphicsEndImageContext()
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
      guard let touch = touches.first else {
        return
      }

      swiped = true
      let currentPoint = touch.location(in: view)
      drawLine(from: lastPoint, to: currentPoint)
        
      lastPoint = currentPoint
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      if !swiped {
        // draw a single point
        drawLine(from: lastPoint, to: lastPoint)
      }
        
      // Merge tempImageView into mainImageView
      UIGraphicsBeginImageContext(drawingTemplate.frame.size)
        drawingTemplate.image?.draw(in: view.bounds, blendMode: .normal, alpha: 1.0)
        drawingTemplate?.image?.draw(in: view.bounds, blendMode: .normal, alpha: opacity)
        drawingTemplate.image = UIGraphicsGetImageFromCurrentImageContext()
      UIGraphicsEndImageContext()
        
        drawingTemplate.image = nil
    }


    //slider button
    @IBAction func switchSlider(_ sender: Any) {
        //enable drawing function
        if WriteOption == true {
            WriteOption = false
            DrawOption = true
            
            text.isHidden = true
            drawingTemplate.isHidden = false
            
        }
        //enable writing option
        else if DrawOption == true {
            WriteOption = true
            DrawOption = false
            
            text.isHidden = false
            drawingTemplate.isHidden = true
        }
    }

}
