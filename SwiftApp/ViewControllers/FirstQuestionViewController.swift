//
//  FirstQuestionViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class FirstQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var question = DataManager().easyQuestions[0]
    var result = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = question
        navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondQuestionViewController else { return }
        secondVC.result = result
    }
    
    @IBAction func trueButtonPresed(_ sender: UIButton) {
        result += 5
        performSegue(withIdentifier: "goToSecond", sender: self)
        
    }
    
    @IBAction func falseButtonPressed(_ sender: UIButton) {
        result += 15
        performSegue(withIdentifier: "goToSecond", sender: self)
        print(result)
    }
    

}
