//
//  SecondQuestionViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class SecondQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var question: Question!
    var result: Int!
    var increaseValue: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdVC = segue.destination as? ThirdQuestionViewController else { return }
        thirdVC.result = result
        thirdVC.question = question
        thirdVC.increaseValue = increaseValue
    }
    
    @IBAction func buttonsPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let correctAnswer = question.answers[1]
        if userAnswer == correctAnswer {
            result += increaseValue
        }
        performSegue(withIdentifier: "goToThird", sender: self)
    }
    
    private func initialSetup() {
        navigationItem.setHidesBackButton(true, animated: false)
        trueButton.setTitle("Да", for: .normal)
        falseButton.setTitle("Нет", for: .normal)
        questionLabel.text = question.questions[1]
    }
}
