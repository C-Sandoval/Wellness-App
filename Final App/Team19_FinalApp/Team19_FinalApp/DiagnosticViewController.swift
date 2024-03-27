//
//  DiagnosticViewController.swift
//  Team19_FinalApp
//
//  Created by Carlos Sandoval on 11/21/23.
//

import UIKit

class DiagnosticViewController: UIViewController {

    //index for questions/assessments
    var questionIdx:Int = 0
    
    //assessment score value
    var depressionScore:Int = 0
    var anxietyScore:Int = 0
    var relationshipScore:Int = 0
    
    //questions/assessments to ask the user
    var assessmentQuestions: [String] = [
        "I have been feeling more down than usual",
        "I have been feeling dissapointed with myself recently",
        "I don't have much motivation to do much of anything",
        "I feel afraid for no reason at all",
        "I blame myself for everything bad that happens",
        "I cry more now than I used to",
        "I have been feeling dissatisfied with my personal relationships",
        "I feel like I'm falling apart and going to pieces",
        "I feel the future is hopeless and that things cannot improve",
        "I have thought about killing myself recently"]
    
    
    //text display for the questions/assessments
    @IBOutlet weak var assessmentDisplay: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //display the first question/assessment
        displayQuestion(index: questionIdx)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "diagnosticToSolutions" {
            let solutionsSegue = segue.destination as! SolutionsViewController
            
            //bookSegue.bookIdx = self.selectedBookIdx
            
            solutionsSegue.depressionAssessmentScore = depressionScore
            solutionsSegue.anxietyAssessmentScore = anxietyScore
            solutionsSegue.relationshipAssessmentScore = relationshipScore
        }
    }
    
    
    //function to display questions/assessments
    func displayQuestion(index:Int){
        //once the user answers 10 questions, it transfers over to the "solutions" view
        if index >= 10 {
            performSegue(withIdentifier: "diagnosticToSolutions", sender: self)
        }
        //displays next question if user has not answered all questions
        else{
            self.assessmentDisplay.text = assessmentQuestions[questionIdx]
        }
    }
    
    // "Strongly Agree" button
    @IBAction func stronglyAgreeButton(_ sender: Any) {
        //add to specific assessment score
        if (questionIdx < 3){
            depressionScore += 5
        }
        else if (questionIdx >= 3 && questionIdx <= 5){
            anxietyScore += 5
        }
        else if (questionIdx == 6){
            relationshipScore += 5
        }
        else if (questionIdx >= 7){
            depressionScore += 5
        }
        
        //increment the question index by 1
        questionIdx += 1
        
        //move on and display next question
        displayQuestion(index: questionIdx)
    }
    
    // "Agree" button
    @IBAction func agreeButton(_ sender: Any) {
        //add to assessment score
        if (questionIdx < 3){
            depressionScore += 4
        }
        else if (questionIdx >= 3 && questionIdx < 5){
            anxietyScore += 4
        }
        else if (questionIdx == 6){
            relationshipScore += 4
        }
        else if (questionIdx >= 7){
            depressionScore += 4
        }
        
        //increment the question index by 1
        questionIdx += 1
        
        //move on and display next question
        displayQuestion(index: questionIdx)
    }
    
    // "Neutral" button
    @IBAction func neutralButton(_ sender: Any) {
        //add to assessment score
        if (questionIdx < 3){
            depressionScore += 3
        }
        else if (questionIdx >= 3 && questionIdx < 5){
            anxietyScore += 3
        }
        else if (questionIdx == 6){
            relationshipScore += 3
        }
        else if (questionIdx >= 7){
            depressionScore += 3
        }
        
        //increment the question index by 1
        questionIdx += 1
        
        //move on and display next question
        displayQuestion(index: questionIdx)
    }
    
    // "Disagree" button
    @IBAction func disagreeButton(_ sender: Any) {
        //add to assessment score
        if (questionIdx < 3){
            depressionScore += 2
        }
        else if (questionIdx >= 3 && questionIdx < 5){
            anxietyScore += 2
        }
        else if (questionIdx == 6){
            relationshipScore += 2
        }
        else if (questionIdx >= 7){
            depressionScore += 2
        }
        
        //increment the question index by 1
        questionIdx += 1
        
        //move on and display next question
        displayQuestion(index: questionIdx)
    }
    
    // "Strongly Disagree" button
    @IBAction func stronglyDisagreeButton(_ sender: Any) {
        //add to assessment score
        if (questionIdx < 3){
            depressionScore += 1
        }
        else if (questionIdx >= 3 && questionIdx < 5){
            anxietyScore += 1
        }
        else if (questionIdx == 6){
            relationshipScore += 1
        }
        else if (questionIdx >= 7){
            depressionScore += 1
        }
        
        //increment the question index by 1
        questionIdx += 1
        
        //move on and display next question
        displayQuestion(index: questionIdx)
    }

}
