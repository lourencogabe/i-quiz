//
//  Question.swift
//  iQuiz
//
//  Created by Gabriel Lourenço on 30/09/24.
//

import Foundation

struct Question{
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(title:"Qual feitiço é conhecido como maldição da morte?", answers: ["Avada Kedavra","Expeliarmus","Estupefaça"], correctAnswer: 0),
    Question(title: "Qual feitiço é utilizado para defesa?", answers: ["Expecto Patronum","Bombarda","Protego"], correctAnswer: 2),
    Question(title: "Qual maldição é conhecida pelo controle do oponente?", answers: ["Maldição da Morte","Maldição Imperius","Maldição Cruciatus"], correctAnswer: 1)
]
