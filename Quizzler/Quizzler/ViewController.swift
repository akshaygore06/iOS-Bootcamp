//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var gameScore : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
//        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }

        checkAnswer() 
        questionNumber += 1
        updateUI()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score : \(gameScore)"
        progressLabel.text = "\(questionNumber) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber)
        nextQuestion()
    }
    

    func nextQuestion() {
        if questionNumber <= 12 {
            let question = allQuestions.list[questionNumber]
            questionLabel.text = question.questionText
        } else {
            print("GAME OVER !!!")
            let alert = UIAlertController(title: "Awsome", message: "You've finished all the question, do you want to start over?", preferredStyle: .alert)
            
            // add the actions (buttons)
            alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: {
                UIAlertAction in
                self.startOver()
            }))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct")
            gameScore += 10
        } else {
            ProgressHUD.showError("Wrong")
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        gameScore = 0
        updateUI()
    }
    

    
}
