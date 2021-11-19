//
//  ThirdQuestionViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class ThirdQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var question: Question!
    var result: Int!
    var increaseValue: Int!
    var failed: [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.result = result
        resultVC.question = question
        resultVC.failed = failed
    }
    
    @IBAction func buttonsPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let correctAnswer = question.answers[2]
        if userAnswer == correctAnswer {
            result += increaseValue
        } else {
            failed.append(question.questions[2])
        }
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    private func initialSetup() {
        trueButton.setTitle("Да", for: .normal)
        falseButton.setTitle("Нет", for: .normal)
        questionLabel.text = question.questions[2]
        navigationItem.setHidesBackButton(true, animated: false)
    }
    
}
