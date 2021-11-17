//
//  ThirdQuestionViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class ThirdQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var question = DataManager().easyQuestions[2]
    var result = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = question
        navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.result = result
    }
    
    
    @IBAction func trueButtonPressed(_ sender: UIButton) {
        result += 10
        performSegue(withIdentifier: "goToResult", sender: self)
        
        print(result)
    }
    
    @IBAction func falseButtonPressed(_ sender: UIButton) {
        result += 5
        performSegue(withIdentifier: "goToResult", sender: self)
        
        print(result)
    }

}
