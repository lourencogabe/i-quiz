//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Gabriel Lourenço on 30/09/24.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionTitle: UILabel!
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBAction func answerButton(_ sender: UIButton) {
        print(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfigure()
    }
    
    func layoutConfigure(){
        navigationItem.hidesBackButton = true
        
        for button in buttonCollection{
            button.layer.cornerRadius = 12
        }
    }
}
