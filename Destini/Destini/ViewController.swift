//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // Our strings
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    let answerDummy = "answer"

    
    // TODO Step 5: Initialise instance variables here
    var storyIndex : Int = 1
    var storiesArray = [
//        new object
        ["Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".","I\'ll hop in. Thanks for the help!","Better ask him if he\'s a murderer first.","3","2"],
        
//        new object
        ["He nods slowly, unphased by the question.","At least he\'s honest. I\'ll climb in.","Wait, I know how to change a tire.","3", "4"],
        
//        new object
        ["As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.","I love Elton John! Hand him the cassette tape.","It\'s him or me! You take the knife and stab him.","6", "5"],
        
//        new object
        ["What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?","answer", "answer", "0", "0"],
//        new object
        ["As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.","answer", "answer", "0", "0"],
        
//        new object
        ["You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"","answer", "answer", "0", "0"]
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
//        storyTextView.text = story1
//        topButton.setTitle(answer1a, for: .normal)
//        bottomButton.setTitle(answer1b, for: .normal)
        changeStory(storiesArray[0][0], storiesArray[0][1], storiesArray[0][2], 1, false, false)
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        var nextIndex = Int(storiesArray[storyIndex-1][4])
        if(sender.tag == 1){
            nextIndex = Int(storiesArray[storyIndex-1][3])
        }
        
        let next = nextIndex ?? 1
        var nextObject = storiesArray[(next)-1]
        changeStory(nextObject[0], nextObject[1], nextObject[2], next, nextObject[3]=="0", nextObject[4]=="0")
    }
    

    func changeStory(_ storyText : String, _ topButtomTitle : String, _ bottomButtonTitle : String, _ index : Int, _ topButtomHidden : Bool, _ bottomButtonHidden: Bool) {
        storyTextView.text = storyText
        topButton.setTitle(topButtomTitle, for: .normal)
        bottomButton.setTitle(bottomButtonTitle, for: .normal)
        storyIndex = index
        topButton.isHidden = topButtomHidden
        bottomButton.isHidden = bottomButtonHidden
        
        if(topButton.isHidden){
            let alert = UIAlertController(title: "Cool", message: "Well done you finished the quiz", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    func startOver() {
        changeStory(storiesArray[0][0], storiesArray[0][1], storiesArray[0][2], 1, false, false)
        
        
    }
    
}
