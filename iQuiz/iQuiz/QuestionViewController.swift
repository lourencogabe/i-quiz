//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Gabriel Lourenço on 30/09/24.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionTitle: UILabel!
    
    @IBAction func answerButton(_ sender: UIButton) {
        print(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
    }
}
