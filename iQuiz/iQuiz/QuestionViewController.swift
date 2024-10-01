//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Gabriel Lourenço on 30/09/24.
//

import UIKit

class QuestionViewController: UIViewController {

    var pontuation = 0
    var questionNumber = 0
    
    @IBOutlet weak var questionTitle: UILabel!
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBAction func answerButton(_ sender: UIButton) {
        print (sender.tag)
        let userAnswer = questions[questionNumber].correctAnswer == sender.tag
        
        if userAnswer {
            pontuation += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(questionConfigure), userInfo: nil, repeats: false)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfigure()
        questionConfigure()
    }
    
    func layoutConfigure(){
        navigationItem.hidesBackButton = true	
        questionTitle.textAlignment = .center
        questionTitle.numberOfLines = 0
        
        for button in buttonCollection{
            button.layer.cornerRadius = 12
        }
    }
    
    @objc func questionConfigure(){
        questionTitle.text = questions[questionNumber].title
        
        for button in buttonCollection{
            let buttonTitle = questions[questionNumber].answers[button.tag]
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
}
