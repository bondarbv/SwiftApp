//
//  SecondQuestionViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class SecondQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var question = DataManager().easyQuestions[1]
    var result = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        print(result)
        navigationItem.setHidesBackButton(true, animated: false)
        questionLabel.text = question
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdVC = segue.destination as? ThirdQuestionViewController else { return }
        thirdVC.result = result
    }
    
    @IBAction func trueButtonPressed(_ sender: UIButton) {
        result += 10
        performSegue(withIdentifier: "goToThird", sender: self)
        print(result)
    }
    
    @IBAction func falseButtonPressed(_ sender: UIButton) {
        result += 5
        performSegue(withIdentifier: "goToThird", sender: self)
        
        print(result)
    }
    
}
