//
//  ViewController.swift
//  Team19_FinalApp
//
//  Created by Carlos Sandoval on 11/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    //personalized books
    @IBOutlet weak var reading1: UIButton!
    @IBOutlet weak var reading2: UIButton!
    @IBOutlet weak var reading3: UIButton!
    
    //book indexes
    var selectedBookIdx = 0
    var book1Idx = 0
    var book2Idx = 1
    var book3Idx = 2
    
    
    //reading titles
    var readingTitles:[String] = ["Anxiety","Childhood Trauma","Depression","Emotions","Relationships","Stress"]
    
    var bookColors:[UIColor] = [UIColor(red: 0, green: 0, blue: 0, alpha: 1),UIColor(red: 0, green: 0, blue: 0, alpha: 1)]
    var bookHeadings: [String] = [""]
    var bookSubReadings: [String] = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadBook(book: reading1, index: book1Idx)
        loadBook(book: reading2, index: book2Idx)
        loadBook(book: reading3, index: book3Idx)
    }
    
    func loadBook(book: UIButton, index: Int) -> Void{
        //setting title
        book.setTitle(readingTitles[index], for: .normal)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "homeToSelectedReading" {
            let bookSegue = segue.destination as! SelectedReadingViewController
            
            bookSegue.bookIdx = self.selectedBookIdx
            bookSegue.bookColors = self.bookColors
            bookSegue.bookHeadings = self.bookHeadings
            bookSegue.subReadings = self.bookSubReadings
            
        }
    }

    
    // wellness check button
    @IBAction func wellnessCheck(_ sender: Any) {
        performSegue(withIdentifier: "homeToWellnessCheck", sender: self)
    }
    
    @IBAction func helpButton(_ sender: Any) {
        performSegue(withIdentifier: "homeToDiagnostics", sender: self)
    }
    
    @IBAction func readBook1(_ sender: Any) {
        self.selectedBookIdx = book1Idx
        self.bookColors = [UIColor(red: 0.996, green: 0.8745, blue: 0.10196, alpha: 1),
                           UIColor(red: 0.95686, green: 0.949, blue: 0.435, alpha: 1)]
        
        self.bookHeadings = ["What is Anxiety?",
                            "Types of Anxiety Disorders",
                            "Spotting Anxiety",
                            "4",
                            "Coping with Anxiety"]
        
        self.bookSubReadings = ["Anxiety is a feeling of fear, dread, and uneasiness. It might cause you to sweat, feel restless and tense, and have a rapid heartbeat. It can be a normal reaction to stress. For example, you might feel anxious when faced with a difficult problem at work, before taking a test, or before making an important decision.",
                                "There are several types of anxiety disorders, including: Generalized anxiety disorder (GAD). People with GAD worry about ordinary issues such as health, money, work, and family. But their worries are excessive, and they have them almost every day for at least 6 months. Panic disorder. People with panic disorder have panic attacks. These are sudden, repeated periods of intense fear when there is no danger. The attacks come on quickly and can last several minutes or more. Phobias. People with phobias have an intense fear of something that poses little or no actual danger. Their fear may be about spiders, flying, going to crowded places, or being in social situations (known as social anxiety).",
                                "Anxiety feels different for everyone. You might experience some of the physical and mental effects such as feeling light-headed or dizzy, headaches, backache or other aches and pains, feeling tense, nervous or unable to relax, having a sense of dread, or fearing the worst, and experiences or difficulties with anxiety that aren't recognised here.",
                                "4",
                                "Although anxiety can manifest at different ways in our lives and difficult to bear, there are ways to deal with it. Some coping strategies to deal with anxiety include: Taking a time-out, Accept that you cannot control everything, Welcome humor, Learn what triggers your anxiety, and Maintain a positive attitude."]
        
        
        performSegue(withIdentifier: "homeToSelectedReading", sender: self)
    }
    
    @IBAction func readBook2(_ sender: Any) {
        self.selectedBookIdx = book2Idx
        self.bookColors = [UIColor(red: 1, green: 0.69, blue: 0.0039, alpha: 1),
                           UIColor(red: 1, green: 0.81176, blue: 0.615686, alpha: 1)]
        
        self.bookHeadings = ["What is Childhood Trauma?",
                             "When Does It Occur?",
                             "Categories of Childhood Trauma",
                             "Impact of Childhood Trauma",
                             "Coping with Childhood Trauma"]
        
        self.bookSubReadings = ["Childhood trauma can occur when a child witnesses or experiences overwhelming negative events in childhood. Many childhood experiences can overwhelm a child. These can occur in relationships such as with abuse, assault, neglect, violence, exploitation or bullying.",
                                "Trauma in early childhood can be especially harmful. Early childhood trauma generally means trauma between birth and the age of six. A child’s brain grows and develops rapidly, especially in the first three years. Young children are also very dependent on the caregivers for care, nurture and protection. This can make young children especially vulnerable to trauma. When trauma occurs early it can affect a child’s development. It can also affect their ability to attach securely, especially when their trauma occurs with a caregiver.",
                                "Childhood trauma can be categorized into 3 sections: a person or people do something which harms a child or young person, a child or young person experiences trauma because their parent or caregiver is affected by their own trauma, a child or young person is not well cared for, protected or nurtured. In the event that a child is harmed by people, it can happen via sexually, physically, emotional abused, exploited or trafficked. In the event of the child is harmed by the caregiver, this can mean that the parent/caregiver cannot meet the child’s emotional or physical needs due to their own traumas which can vary by a chronic physical or mental illness, a serious accident, misuse of  substances, dies, is imprisoned, divorces or separates, and other ways that may not be listed here. In the event of a child is not well cared for, this occurs with physical or emotional neglect, and can be more common in situations of poverty or discrimination.",
                                "Traumatic events can affect how a child’s brain develops, which can have lifelong consequences for them physically, mentally, and socially. When a child experiences a traumatic event, it can impair their physical development. The stress can impair the development of their immune and central nervous systems, making it harder to achieve their full potential and can lead to higher exposure to contract health problems such as asthma, coronary heart disease, diabetes, and strokes.Childhood trauma can also have an impact on mental health. Psychological effects of traumatic experiences can include: anger control issues, depression, emotional distress, chronic stress, Post-traumatic stress disorder (PTSD), and psychotic disorders. Not only does childhood trauma affect the physical and mental aspects of a child, the impact also affects a child's relationships. When a child experiences a trauma that teaches them that they cannot trust or rely on that caregiver, they're likely to believe that the world around them is a scary place and people are dangerous. This lesson makes it incredibly difficult to form relationships throughout their childhood and adulthood. Children who experience trauma are also likely to struggle with romantic relationships in adulthood.",
                                "Social support can be key to reducing the impact trauma has on a child, even as far as reducing their risk of suicidal ideation.21 Here are some ways to support a child after an upsetting event: encourage the child to talk about their feelings and validate their emotions. Help them understand that they are not at fault. Answer their questions honestly. Reassure the child that you’ll do everything you can to keep them safe. Stick to a daily routine as much as possible. Be patient as each child recovers at their own pace. Depending on the child’s age and needs, they may be referred for services such as cognitive behavioral therapy, play therapy, or family therapy. In some cases, such as when there is a diagnosis of PTSD, medication may also be an option to help treat their symptoms. In the event of yourself trying to release your own childhood traumas, you can use the help listed but also have the options to: spending time with people in your life who are supportive,  keeping a consistent eating and sleeping schedule, getting physically active, and avoiding alcohol and drugs."]
        
        performSegue(withIdentifier: "homeToSelectedReading", sender: self)
    }
    
    
    @IBAction func readBook3(_ sender: Any) {
        self.selectedBookIdx = book3Idx
        self.bookColors = [UIColor(red: 0.22, green: 0.65, blue: 1, alpha: 1),
                           UIColor(red: 0.529, green: 0.7686, blue: 1, alpha: 1)]
        
        self.bookHeadings = ["What is Depression?",
                             "Symptoms",
                             "Recognizing Depression",
                             "Asking for Help",
                             "Coping with Depression"]
        
        self.bookSubReadings = ["Depression is a mood disorder that causes a persistent feeling of sadness and loss of interest. Also called major depressive disorder or clinical depression, it affects how you feel, think and behave and can lead to a variety of emotional and physical problems. You may have trouble doing normal day-to-day activities, and sometimes you may feel as if life isn't worth living.",
                                "Although depression may occur only once during your life, people typically have multiple episodes. During these episodes, symptoms occur most of the day, nearly every day and may include: feelings of sadness, tearfulness, emptiness or hopelessness, angry outbursts, irritability or frustration, even over small matters, loss of interest or pleasure in most or all normal activities, such as sex, hobbies or sports, sleep disturbances, including insomnia or sleeping too much, tiredness and lack of energy, so even small tasks take extra effort, reduced appetite and weight loss or increased cravings for food and weight gain, anxiety, agitation or restlessness, slowed thinking, speaking or body movements, feelings of worthlessness or guilt, fixating on past failures or self-blame, trouble thinking, concentrating, making decisions and remembering things, frequent or recurrent thoughts of death, suicidal thoughts, suicide attempts or suicide, unexplained physical problems, such as back pain or headaches.",
                                "Common signs and symptoms of depression in children and teenagers are similar to those of adults, but there can be some differences. In younger children, symptoms of depression may include sadness, irritability, clinginess, worry, aches and pains, refusing to go to school, or being underweight. In teens, symptoms may include sadness, irritability, feeling negative and worthless, anger, poor performance or poor attendance at school, feeling misunderstood and extremely sensitive, using recreational drugs or alcohol, eating or sleeping too much, self-harm, loss of interest in normal activities, and avoidance of social interaction. Unfortunately, depression often goes undiagnosed and untreated in older adults, and they may feel reluctant to seek help. Symptoms of depression may be different or less obvious in older adults, such as: memory difficulties or personality changes, physical aches or pain, fatigue, loss of appetite, sleep problems or loss of interest in sex — not caused by a medical condition or medication, often wanting to stay at home, rather than going out to socialize or doing new things, suicidal thinking or feelings, especially in older men.",
                                "If you feel depressed, make an appointment to see your doctor or mental health professional as soon as you can. If you're reluctant to seek treatment, talk to a friend or loved one, any health care professional, a faith leader, or someone else you trust. If you think you may hurt yourself or attempt suicide, call 911 in the U.S. or your local emergency number immediately. In the U.S., call or text 988 to reach the 988 Suicide & Crisis Lifeline, available 24 hours a day, seven days a week. Or use the Lifeline Chat. Services are free and confidential.",
                                "If you are still in need of additional help, there are additional coping strategies to deal with depression such as: keeping in touch with friends and family means you have someone to talk to when you feel low as socialising can improve your mood, being more active by some form of exercise as exercise can help lift your mood, facing your fears as in don't avoid the things you find difficult, avoid drinking alcohol or as little as possible as drinking more than usual as a way of coping with or hiding your emotions, or just to fill time won't get rid of the depression, eating a healthy diet, and creating a routine."]
        
        performSegue(withIdentifier: "homeToSelectedReading", sender: self)
    }
    
}

