//
//  ReadingsViewController.swift
//  Team19_FinalApp
//
//  Created by Carlos Sandoval on 11/21/23.
//

import UIKit

class ReadingsViewController: UIViewController {

    var bookTag:Int = 0
    var colors:[UIColor] = [UIColor(red: 0, green: 0, blue: 0, alpha: 1),UIColor(red: 0, green: 0, blue: 0, alpha: 1)]
    
    var selectedHeadings: [String] = [""]
    var selectedSubReadings: [String] = [""]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "reeadingsToBook" {
            let bookSegue = segue.destination as! SelectedReadingViewController
            
            bookSegue.bookIdx = self.bookTag
            bookSegue.bookColors = self.colors
            bookSegue.bookHeadings = self.selectedHeadings
            bookSegue.subReadings = self.selectedSubReadings
            
        }
    }
    
    //this button leads to the selected reading about "anxiety"
    @IBAction func AnxietyReading(_ sender: Any) {
        bookTag = 0
        colors = [UIColor(red: 0.996, green: 0.8745, blue: 0.10196, alpha: 1),
                  UIColor(red: 0.95686, green: 0.949, blue: 0.435, alpha: 1)]
        selectedHeadings = ["What is Anxiety?",
                            "Types of Anxiety Disorders",
                            "Spotting Anxiety",
                            "4",
                            "Coping with Anxiety"]
        selectedSubReadings = ["Anxiety is a feeling of fear, dread, and uneasiness. It might cause you to sweat, feel restless and tense, and have a rapid heartbeat. It can be a normal reaction to stress. For example, you might feel anxious when faced with a difficult problem at work, before taking a test, or before making an important decision.",
            "There are several types of anxiety disorders, including: Generalized anxiety disorder (GAD). People with GAD worry about ordinary issues such as health, money, work, and family. But their worries are excessive, and they have them almost every day for at least 6 months. Panic disorder. People with panic disorder have panic attacks. These are sudden, repeated periods of intense fear when there is no danger. The attacks come on quickly and can last several minutes or more. Phobias. People with phobias have an intense fear of something that poses little or no actual danger. Their fear may be about spiders, flying, going to crowded places, or being in social situations (known as social anxiety).",
            "Anxiety feels different for everyone. You might experience some of the physical and mental effects such as feeling light-headed or dizzy, headaches, backache or other aches and pains, feeling tense, nervous or unable to relax, having a sense of dread, or fearing the worst, and experiences or difficulties with anxiety that aren't recognised here.",
            "4",
            "Although anxiety can manifest at different ways in our lives and difficult to bear, there are ways to deal with it. Some coping strategies to deal with anxiety include: Taking a time-out, Accept that you cannot control everything, Welcome humor, Learn what triggers your anxiety, and Maintain a positive attitude."]
        
        performSegue(withIdentifier: "reeadingsToBook", sender: self)
    }
    
    //this button leads to the selected reading about "childhood"
    @IBAction func ChildhoodReading(_ sender: Any) {
        bookTag = 1
        colors = [UIColor(red: 1, green: 0.69, blue: 0.0039, alpha: 1),
                  UIColor(red: 1, green: 0.81176, blue: 0.615686, alpha: 1)]
        selectedHeadings = ["What is Childhood Trauma?",
                            "When Does It Occur?",
                            "Categories of Childhood Trauma",
                            "Impact of Childhood Trauma",
                            "Coping with Childhood Trauma"]
        selectedSubReadings = ["Childhood trauma can occur when a child witnesses or experiences overwhelming negative events in childhood. Many childhood experiences can overwhelm a child. These can occur in relationships such as with abuse, assault, neglect, violence, exploitation or bullying.",
            "Trauma in early childhood can be especially harmful. Early childhood trauma generally means trauma between birth and the age of six. A child’s brain grows and develops rapidly, especially in the first three years. Young children are also very dependent on the caregivers for care, nurture and protection. This can make young children especially vulnerable to trauma. When trauma occurs early it can affect a child’s development. It can also affect their ability to attach securely, especially when their trauma occurs with a caregiver.",
            "Childhood trauma can be categorized into 3 sections: a person or people do something which harms a child or young person, a child or young person experiences trauma because their parent or caregiver is affected by their own trauma, a child or young person is not well cared for, protected or nurtured. In the event that a child is harmed by people, it can happen via sexually, physically, emotional abused, exploited or trafficked. In the event of the child is harmed by the caregiver, this can mean that the parent/caregiver cannot meet the child’s emotional or physical needs due to their own traumas which can vary by a chronic physical or mental illness, a serious accident, misuse of  substances, dies, is imprisoned, divorces or separates, and other ways that may not be listed here. In the event of a child is not well cared for, this occurs with physical or emotional neglect, and can be more common in situations of poverty or discrimination.",
            "Traumatic events can affect how a child’s brain develops, which can have lifelong consequences for them physically, mentally, and socially. When a child experiences a traumatic event, it can impair their physical development. The stress can impair the development of their immune and central nervous systems, making it harder to achieve their full potential and can lead to higher exposure to contract health problems such as asthma, coronary heart disease, diabetes, and strokes.Childhood trauma can also have an impact on mental health. Psychological effects of traumatic experiences can include: anger control issues, depression, emotional distress, chronic stress, Post-traumatic stress disorder (PTSD), and psychotic disorders. Not only does childhood trauma affect the physical and mental aspects of a child, the impact also affects a child's relationships. When a child experiences a trauma that teaches them that they cannot trust or rely on that caregiver, they're likely to believe that the world around them is a scary place and people are dangerous. This lesson makes it incredibly difficult to form relationships throughout their childhood and adulthood. Children who experience trauma are also likely to struggle with romantic relationships in adulthood.",
            "Social support can be key to reducing the impact trauma has on a child, even as far as reducing their risk of suicidal ideation.21 Here are some ways to support a child after an upsetting event: encourage the child to talk about their feelings and validate their emotions. Help them understand that they are not at fault. Answer their questions honestly. Reassure the child that you’ll do everything you can to keep them safe. Stick to a daily routine as much as possible. Be patient as each child recovers at their own pace. Depending on the child’s age and needs, they may be referred for services such as cognitive behavioral therapy, play therapy, or family therapy. In some cases, such as when there is a diagnosis of PTSD, medication may also be an option to help treat their symptoms. In the event of yourself trying to release your own childhood traumas, you can use the help listed but also have the options to: spending time with people in your life who are supportive,  keeping a consistent eating and sleeping schedule, getting physically active, and avoiding alcohol and drugs."]
        
        performSegue(withIdentifier: "reeadingsToBook", sender: self)
    }
    
    //this button leads to the selected reading about "depression"
    @IBAction func DepressionReading(_ sender: Any) {
        bookTag = 2
        colors = [UIColor(red: 0.22, green: 0.65, blue: 1, alpha: 1),
                  UIColor(red: 0.529, green: 0.7686, blue: 1, alpha: 1)]
        selectedHeadings = ["What is Depression?",
                            "Symptoms",
                            "Recognizing Depression",
                            "Asking for Help",
                            "Coping with Depression"]
        selectedSubReadings = ["Depression is a mood disorder that causes a persistent feeling of sadness and loss of interest. Also called major depressive disorder or clinical depression, it affects how you feel, think and behave and can lead to a variety of emotional and physical problems. You may have trouble doing normal day-to-day activities, and sometimes you may feel as if life isn't worth living.",
            "Although depression may occur only once during your life, people typically have multiple episodes. During these episodes, symptoms occur most of the day, nearly every day and may include: feelings of sadness, tearfulness, emptiness or hopelessness, angry outbursts, irritability or frustration, even over small matters, loss of interest or pleasure in most or all normal activities, such as sex, hobbies or sports, sleep disturbances, including insomnia or sleeping too much, tiredness and lack of energy, so even small tasks take extra effort, reduced appetite and weight loss or increased cravings for food and weight gain, anxiety, agitation or restlessness, slowed thinking, speaking or body movements, feelings of worthlessness or guilt, fixating on past failures or self-blame, trouble thinking, concentrating, making decisions and remembering things, frequent or recurrent thoughts of death, suicidal thoughts, suicide attempts or suicide, unexplained physical problems, such as back pain or headaches.",
            "Common signs and symptoms of depression in children and teenagers are similar to those of adults, but there can be some differences. In younger children, symptoms of depression may include sadness, irritability, clinginess, worry, aches and pains, refusing to go to school, or being underweight. In teens, symptoms may include sadness, irritability, feeling negative and worthless, anger, poor performance or poor attendance at school, feeling misunderstood and extremely sensitive, using recreational drugs or alcohol, eating or sleeping too much, self-harm, loss of interest in normal activities, and avoidance of social interaction. Unfortunately, depression often goes undiagnosed and untreated in older adults, and they may feel reluctant to seek help. Symptoms of depression may be different or less obvious in older adults, such as: memory difficulties or personality changes, physical aches or pain, fatigue, loss of appetite, sleep problems or loss of interest in sex — not caused by a medical condition or medication, often wanting to stay at home, rather than going out to socialize or doing new things, suicidal thinking or feelings, especially in older men.",
            "If you feel depressed, make an appointment to see your doctor or mental health professional as soon as you can. If you're reluctant to seek treatment, talk to a friend or loved one, any health care professional, a faith leader, or someone else you trust. If you think you may hurt yourself or attempt suicide, call 911 in the U.S. or your local emergency number immediately. In the U.S., call or text 988 to reach the 988 Suicide & Crisis Lifeline, available 24 hours a day, seven days a week. Or use the Lifeline Chat. Services are free and confidential.",
            "If you are still in need of additional help, there are additional coping strategies to deal with depression such as: keeping in touch with friends and family means you have someone to talk to when you feel low as socialising can improve your mood, being more active by some form of exercise as exercise can help lift your mood, facing your fears as in don't avoid the things you find difficult, avoid drinking alcohol or as little as possible as drinking more than usual as a way of coping with or hiding your emotions, or just to fill time won't get rid of the depression, eating a healthy diet, and creating a routine."]
        
        performSegue(withIdentifier: "reeadingsToBook", sender: self)
    }
    
    //this button leads to the selected reading about "handling emotions"
    @IBAction func EmotionsReading(_ sender: Any) {
        bookTag = 3
        colors = [UIColor(red: 0.65, green: 0.81, blue: 0.596, alpha: 1),
                  UIColor(red: 0.949, green: 1, blue: 0.91, alpha: 1)]
        selectedHeadings = ["Dealing With Difficult Emotions",
                            "Identify the Emotion",
                            "Emotions Come and Go",
                            "Take Action",
                            "Getting Help"]
        selectedSubReadings = ["Some emotions are positive. Think of happiness, joy, interest, excitement, gratitude, and love. These positive emotions feel good. Negative emotions — like sadness, anger, loneliness, jealousy, self-criticism, fear, or rejection — can be difficult, even painful at times. That's especially true when we feel a negative emotion too often, too strongly, or dwell on it too long. Negative emotions may be difficult, but we can learn to handle them.",
            "Learning to notice and identify your feelings takes practice. In addition to focusing on your feelings, check in with your body, too. You may feel sensations with certain emotions — perhaps your face gets hot or your muscles tense. First, be aware of how you feel. When you have a negative emotion, such as anger, try to name what you're feeling. This is a lot better than pretending not to have the feeling at all or losing your temper. Next, figure out what caused the feeling. Understanding the source of your feelings will help you to figure out the best ways to handle them. Also, don't blame. Being able to recognize and explain your emotions isn't the same as blaming someone or something for the way you feel. Finally, accept all your emotions as natural and understandable. Don't judge yourself for the emotions you feel. It's normal to feel them. Accepting how you feel can help you move on, so don't be hard on yourself.",
            "Every one of your emotions is impermanent. They arise and reside within you for a time, and then disappear. It’s easy to forget this when you’re in the midst of dealing with difficult emotions. Allow yourself to witness and observe your emotions with kind attention and patience, giving them the latitude to morph, and in many cases, completely evaporate.",
            "Once you've identified and understood what you're feeling, you can decide how you need to express your emotion. Sometimes it's enough to just process how you feel in your own head, but other times you'll want to do something to feel better. Think about the best way to express your emotion. Do you need to gently confront someone else? Talk things over with a friend? Or work off the feeling by going for a run? In addition, learn how to change your mood. Try doing things that make you happy, even if you don't feel like it. For example, you might not be in the mood to go out after a breakup. But going for a walk or watching a funny movie with friends can lift you out of that negative space. THis can lead to building positive emotions. Make it a habit to focus on what's good in your life — even the little things. It could be the praise a parent gave you for fixing the Wi-Fi or how great the salad you made for lunch tastes. Noticing the good things even when you're feeling bad can help you shift the emotional balance from negative to positive.",
            "Sometimes, there will be times where you can't shake a tough emotion. If you have feelings of sadness or worry for more than a couple of weeks, or if you feel so upset that you think you might hurt yourself or other people, you may need extra help. Talk about how you're feeling with a parent, other trusted adult, or a friend. This can help you explore your emotions and give you a fresh way of thinking about things. If you don't have anyone you can turn to, reach out to someone at a help line. There are people to talk with 24/7. They can listen and guide you on how to get the help you need. In the United States, contact: SAMHSA's free helpline at 1-800-662-HELP (4357) for provider referrals in your area. Or you can text your zip code to 435748 (HELP4U) for referrals, The Trevor Lifeline for LGBTQ community. Call 1-866-488-7386 or text START to 678678."]
        
        performSegue(withIdentifier: "reeadingsToBook", sender: self)
    }
    
    //this button leads to the selected reading about "relationships"
    @IBAction func RelationshipsReading(_ sender: Any) {
        bookTag = 4
        colors = [UIColor(red: 0.97, green: 0.4588, blue: 0.3, alpha: 1),
                  UIColor(red: 1, green: 0.87, blue: 0.87, alpha: 1)]
        selectedHeadings = ["Managing Relationships",
                            "What Makes a Healthy Relationship?",
                            "Common Relationship Problems",
                            "Tips for Having Healthy Relationships",
                            "Knowing When to Stay or Leave a Relationship"]
        selectedSubReadings = ["Relationships with family, friends, and especially romantic partners require effort to maintain. Relationships are very important part of our lives, and often give us meaning, purpose, positive emotions, and contribute to an individual’s sense of well-being, self-esteem and security. Some factors to keep in mind when it comes to relationships are: relationships take time to develop, relationships can change across time, all couples experience problems, how problems and challenges are addressed help define relationships as either healthy or unhealthy,and the first step towards developing a positive relationship is your willingness to work at it.",
            "Every relationship is unique, and people come together for many different reasons. Part of what defines a healthy relationship is sharing a common goal for exactly what you want the relationship to be and where you want it to go. And that’s something you’ll only know by talking deeply and honestly with your family, friends, and especially romantic partners. Make sure to maintain a meaningful emotional connection with each other. You each make the other feel loved and emotionally fulfilled. There’s a difference between being loved and feeling loved. When you feel loved, it makes you feel accepted and valued by your partner, like someone truly gets you. Some relationships get stuck in peaceful coexistence, but without the partners truly relating to each other emotionally. While the union may seem stable on the surface, a lack of ongoing involvement and emotional connection serves only to add distance between two people.",
            "Some of the most common issues that cause conflict within a relationship are: finances, intimacy, time, trust and jealousy. In terms of finances, money is one of the most common issues that cause conflict in a relationship. Whether it’s having different financial resources, different views about the importance of money, or different spending habits, money issues can cause tension in a relationship. This is especially true if there is an imbalance of power—for example, when one partner has more financial resources and the other feels like they “owe” their partner financially. In terms of intimacy, sex and intimacy is another issue that many couples struggle with. Partners may have different needs and desires around physical intimacy. One person may want sex more often than the other, or may be more open to different kids of sex or having sex with more than one person, such as in open or polyamorous relationships. Sometimes there are mismatches in comfort levels with public displays of affection—one partner may not want to be physically affectionate in public while the other does. And these preferences may change over time as the relationship progresses. Ongoing and honest sharing about intimacy needs and preferences is a core part of keeping a relationship healthy. In terms of time, difference in time management is another issue that can cause conflict in a relationship, particularly when it comes to making time for each other. Balancing alone time, time with your partner, time with friends, and time for other responsibilities can be challenging, and expectations may change over time as the relationship gets more serious. Having a clear sense of what you need and sharing that with a partner, especially as what your need or want changes, is an important part of a healthy relationship.If your partner does not make time for you, you may struggle with feelings of resentment or jealousy. Similarly, if your partner wants you to constantly be together, you may start to feel like you’re not paying enough attention to other important parts of your life individually. In terms of trust and jealousy, feeling insecure, jealous, or distrustful in a relationship can lead to a number of problems very quickly—especially if there are clear reasons for the distrust. Sometimes, these feelings arise when there is no clear reason. Many of us feel insecure in a relationship because we do not have much relationship experience, have areas of low self-worth that affect how we feel about ourselves in a relationship, or because we have unresolved issues from a previous relationship. If you recognize that your feelings of insecurity are coming from inside yourself, consider talking it through with your partner or seeking help from a therapist who can help you get to the root of the issue.In other instances, your partner’s actions or words can cause feelings of insecurity, either on purpose or inadvertently.",
            "There are basic ways to make relationships healthy, even though each relationship is different. These tips apply to all kinds of relationships: friendships, work and family relationships, and romantic partnerships. Keep expectations realistic. No one can be everything we might want them to be. Healthy relationships mean accepting people as they are and not trying to change them. Talk with each other. It can't be said enough: communication is essential to healthy relationships. Be flexible. It is natural to feel uneasy about changes. Healthy relationships allow for change and growth. Take care of yourself, too. Healthy relationships are mutual, with room for both people’s needs. Be dependable. If you make plans with someone, follow through. If you take on a responsibility, complete it. Healthy relationships are trustworthy. Fight fair. Most relationships have some conflict. It only means you disagree about something; it does not have to mean you don't like each other. Be affirming. According to relationship researcher John Gottman, happy couples have a ratio of 5 positive interactions or feelings for every 1 negative interaction or feeling.  Express warmth and affection! Keep your life balanced. Other people help make our lives satisfying but they cannot meet every need. Find what interests you and become involved. Healthy relationships have room for outside activities. It’s a process. It might look like everyone on campus is confident and connected, but most people share concerns about fitting in and getting along with others. It takes time to meet people and get to know them.  Healthy relationships can be learned and practiced, and keep getting better. Lastly, be yourself! It’s much easier and more fun to be authentic than to pretend to be something or someone else. Healthy relationships are made of real people.",
            "Healthy relationships are based on equality, kindness, compassion, and support. Unhealthy relationships, meanwhile, often have dynamics that breed negative feelings—such as criticism, selfishness, resentment, trouble with compromise, or an imbalance of power or control. Most relationships will face conflict or challenges from time to time. If these issues are constant, or if you often feel worse after dealing with them, it can help to check in with yourself and see whether the relationship is healthy enough to find a resolution or whether it may be time to leave. To stay in a relationship, you feel fulfilled and satisfied: if both you and your partner feel satisfied emotionally, socially, and physically, and you trust that you will be cared for and listened to, your relationship is integrated with other parts of your life: if your partner is welcomed by your friends and family, and you feel welcomed by their loved ones. If you feel proud to introduce them, at ease with them in social situations, and not embarrassed or humiliated by their behavior, you know you can tell your partner anything: if there is conflict, bad news, or big changes in your life,  your partner is there for you and will work with you to find solutions and move forward, you and your partner feel secure: if you and your partner respect one another’s alone time, their past and present relationships, and handle feelings of insecurity or jealousy in healthy ways. If you can handle negative feelings with kindness and maturity, you are on the same page: If you share similar core beliefs, and have the same goals for your future together, and agree on what you want out of a relationship, you feel excited about the future: If you feel excited about your partner and what you can accomplish together, you ask for change and you see change: if when you have a conflict and ask for compromise, your partner does their part to make the change you want to see. If they respond with kindness and compassion, and not anger or defensiveness, when asked to compromise. Leaving a relationship happens when your needs are not being met: If you have communicated your emotional, social, or physical needs and your partner is not meeting them, your primary relationship needs are being met by other people: If you are seeking validation, support or intimacy from others, including friends and family, specifically because your partner does not provide them for you, you know you can’t ask for more: If you are unhappy with your relationship, and your needs have been repeatedly ignored. If you don’t feel you can ask more of your partner because you know they will not take your request seriously, you or your partner are consistently jealous: If you or your partner are consistently jealous, with or without reason, and there are no actions taken to rebuild trust, you have irreconcilable differences: If you have differences in your core values and beliefs, and your beliefs and goals for the future, and no one is willing to compromise, your friends and family don’t support your relationship: If you trust that your loved ones have your best interest at heart, and yet feel that you are constantly defending your relationship to them. If you are afraid to bring up relationship issues with friends and family because it causes conflict with them, you feel stuck or obligated: If you are unhappy but you feel you have to keep going because you have already invested so much time and energy into the relationship. If you feel guilty about leaving the relationship because you feel pressure to keep investing in it, you just can’t seem to “make it work”: If you’ve been unhappy for a long time and make promises to improve the relationship, but there is no follow-through. If you have been trying to “make it work” for months or years with no improvement, you feel resentment toward your partner: If you feel that the issues in your relationship affect your ability to view your partner positively. If you feel ignored, resentful or are holding grudges against your partner, you just don’t feel loved: If you have incompatible ways of expressing and receiving affection, or your partner does not want to show you affection the way you want them to. If you simply don’t feel loved, or don’t know how to make your partner feel loved. If a relationship is turning abusive, signs include: emotional or verbal: one partner threatens, intimidates, or humiliates the other, isolates them from friends or family, or manipulates their partner into acting or thinking a certain way, financial: one partner controls access to money or information about finances, controls household spending, or does not allow the other partner to be financially independent, electronically: one partner uses electronic means such as email, text messages, social media, GPS tracking, or other digital devices to harass, control, or embarrass the other, physical: one partner hits, shoves, kicks, bites, or chokes the other, damages their personal property, harms pets, or withholds necessities including food or medication, sexual: one partner forces the other to perform sexual activity against their will or guilts or pressures their partner into sex, brags about cheating, refuses to use birth control, or withholds affection as an act of coercion."]
        
        performSegue(withIdentifier: "reeadingsToBook", sender: self)
    }
    
    //this button leads to the selected reading about "stress"
    @IBAction func StressReading(_ sender: Any) {
        bookTag = 5
        colors = [UIColor(red: 0.78, green: 0, blue: 0.22, alpha: 1),
                  UIColor(red: 1, green: 0.4, blue: 0.4, alpha: 1)]
        selectedHeadings = ["What is Stress",
                            "Stressing the Problem",
                            "Acute Stress",
                            "Chronic Stress",
                            "Relief the Stress"]
        selectedSubReadings = ["Stress is how we react when we feel under pressure or threatened. It usually happens when we are in a situation that we don't feel we can manage or control.",
            "Sometimes, a small amount of stress can help us to complete tasks and feel more energised. But stress can become a problem when it lasts for a long time or is very intense. In some cases, stress can affect our physical and mental health. You might hear healthcare professionals refer to some types of stress as 'acute' or 'chronic':",
            "There is one type of stress known as acute stress. Acute stress happens within a few minutes to a few hours of an event. It lasts for a short period of time, usually less than a few weeks, and is very intense. It can happen after an upsetting or unexpected event. For example, this could be a sudden bereavement, assault or natural disaster.",
            "Another type of stress is chronic stress. Chronic stress lasts for a long period of time or keeps coming back. You might experience this if you are under lots of pressure a lot of the time. You might also feel chronic stress if your day-to-day life is difficult, for example if you are a carer or if you live in poverty.",
            "Altough stress can be difficult to handle, especially after prolong periods of time, there are ways to deal with it. The obvious way to prevent stress is to remove yourself from what is causing your stress. However, it isnt possible to do so. So, some ways to deal with stress are take a moment to think about what you’ve accomplished — not what you didn’t get done, narrow your view will help you feel more in control of the moment and long-term tasks by setting goals for your day, week and month, staying connected with people who keep you calm, make you happy, provide emotional support and help you with practical things."]
        
        performSegue(withIdentifier: "reeadingsToBook", sender: self)
    }

}
