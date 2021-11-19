//
//  FirstQuestionViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class FirstQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var question: Question!
    private var result = 0
    var increaseValue: Int!
    private var failed: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondQuestionViewController else { return }
        secondVC.result = result
        secondVC.question = question
        secondVC.increaseValue = increaseValue
        secondVC.failed = failed
    }
    
    @IBAction func buttonsPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let correctAnswer = question.answers[0]
        if userAnswer == correctAnswer {
            result += increaseValue
        } else {
            failed.append(question.questions[0])
        }
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    
    
    private func initialSetup() {
        questionLabel.text = question.questions[0]
        trueButton.setTitle("Да", for: .normal)
        falseButton.setTitle("Нет", for: .normal)
        navigationItem.setHidesBackButton(true, animated: false)
    }
}
