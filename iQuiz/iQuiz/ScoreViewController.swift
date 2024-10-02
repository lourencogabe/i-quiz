//
//  ScoreViewController.swift
//  iQuiz
//
//  Created by Gabriel Lourenço on 01/10/24.
//

import UIKit

class ScoreViewController: UIViewController {
    
    var score: Int?
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfigure()
        scoreConfigure()
    }
    
    func layoutConfigure(){
        navigationItem.hidesBackButton = true
        restartButton.layer.cornerRadius = 12
    }
    
    func scoreConfigure(){
        guard let scoreConfig = score else {return}
                scoreLabel.text = "Você acertou \(scoreConfig) de \(questions.count) questões!"
    }
}
