//
//  SelectedReadingViewController.swift
//  Team19_FinalApp
//
//  Created by Carlos Sandoval on 11/21/23.
//

import UIKit

class SelectedReadingViewController: UIViewController {

    var bookIdx:Int = 0
    var bookColors:[UIColor] = [UIColor(red: 0, green: 0, blue: 0, alpha: 1),
        UIColor(red: 125, green: 77, blue: 125, alpha: 1)]
    
    var readingTitles:[String] = ["Anxiety","Childhood","Depression","Emotions","Relationships","Stress"]
    
    var bookHeadings:[String] = [""]
    var subReadings:[String] = [""]
    var pageIdx: Int = 1
    var position = Int ()
    
    @IBOutlet weak var navigationHeading: UILabel!
    @IBOutlet weak var mainHeading: UILabel!
    @IBOutlet weak var subtextReading: UITextView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //setting title to the reading that was chosen
        self.title = readingTitles[bookIdx]
        
        //setting up the selected book colors
        SetBookColors()
        
        //setting main headline
        mainHeading.text = bookHeadings[0]
        
        //setting up the subtext to read
        subtextReading.text = subReadings[0]
        
        //swipe actions
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
                         swipeLeft.direction = .left
                         self.view!.addGestureRecognizer(swipeLeft)
                                                          
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
                         swipeRight.direction = .right
                         self.view!.addGestureRecognizer(swipeRight)
    }
    
    //function to handle swipe gestures
    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
        
        if gesture.direction == UISwipeGestureRecognizer.Direction.left {
            if position < subReadings.count - 1{
                position = position + 1
                pageIdx += 1
                pageControl.currentPage = position
                
                self.mainHeading.text = bookHeadings[pageIdx - 1]
                self.subtextReading.text = subReadings[pageIdx - 1]
                
                finishedReading()
            }
        }
        else if gesture.direction == UISwipeGestureRecognizer.Direction.right {
            if position > 0 {
                position = position - 1
                pageIdx -= 1
                pageControl.currentPage = position
                
                self.mainHeading.text = bookHeadings[pageIdx - 1]
                self.subtextReading.text = subReadings[pageIdx - 1]
                
                finishedReading()
            }
        }
    }
    
    //used for "done" button in navigation bar
    @objc func handleBackButtonTapped() {
          self.navigationController?.popViewController(animated: true)
       }
           
    //function to set book colors based on topic that was selected
    func SetBookColors(){
        self.navigationHeading.backgroundColor = bookColors[0]
        self.mainHeading.backgroundColor = bookColors[1]
    }
    
    //function to show the "done" button
    func finishedReading(){
        if self.pageIdx == 5 {
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(handleBackButtonTapped))
        }
    }
    

}
