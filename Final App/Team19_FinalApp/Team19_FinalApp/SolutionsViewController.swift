//
//  SolutionsViewController.swift
//  Team19_FinalApp
//
//  Created by Carlos Sandoval on 11/21/23.
//

import UIKit

class SolutionsViewController: UIViewController {
    
    //assessment score value
    var depressionAssessmentScore:Int = 0
    var anxietyAssessmentScore:Int = 0
    var relationshipAssessmentScore:Int = 0
    
    //textview for the solutions
    @IBOutlet weak var solutionsText: UITextView!
    
    var solutionsForDepression:String = "▶︎Make an appointment to see your doctor or mental health professional as soon as you can \n\n ▶︎Talk to a friend or loved one, any health care professional, a faith leader, or someone else you trust \n\n ▶︎If you think you may hurt yourself or attempt suicide, call 911 in the U.S. or your local emergency number immediately \n socialze to improve your mood \n\n ▶︎Become more active by some form of exercise \n\n ▶︎Face your fears \n\n ▶︎Avoid drinking alcohol or as little as possible \n\n ▶︎Eating a healthy diet, and creating a routine"
    var solutionsForAnxiety:String = "\n ▶︎Taking a time-out \n\n ▶︎Accept that you cannot control everything \n\n ▶︎Welcome humor \n\n ▶︎Learn what triggers your anxiety \n\n ▶︎Maintain a positive attitude"
    var solutionsForRelationships:String = "\n ▶︎Keep expectations realistic \n\n ▶︎Talk with each other \n\n ▶︎Be flexible \n\n ▶︎Take care of yourself \n\n ▶︎Fight fair \n\n ▶︎Be affirming \n\n ▶︎Express warmth and affection! \n\n ▶︎Keep your life balanced \n\n ▶︎ Find what interests you and become involved \n\n ▶︎Be yourself!"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        provideSolutions()
    }
    
    //provide solutions for the user
    func provideSolutions() -> Void {
        if (depressionAssessmentScore >= 9) {
            solutionsText.text += "\n \(solutionsForDepression)"
        }
        if (anxietyAssessmentScore >= 9) {
            solutionsText.text += "\n \(solutionsForAnxiety)"
        }
        if (relationshipAssessmentScore > 3) {
            solutionsText.text += "\n \(solutionsForRelationships)"
        }
    }
}
