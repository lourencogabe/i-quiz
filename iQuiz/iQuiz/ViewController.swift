//
//  ViewController.swift
//  iQuiz
//
//  Created by Gabriel Lourenço on 30/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var goQuiz: UIButton!
    
    @IBAction func pressButton(_ sender: Any) {
        print("Botão pressionado!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfigure()
    }

    func layoutConfigure(){
        goQuiz.layer.cornerRadius=12
    }
}

