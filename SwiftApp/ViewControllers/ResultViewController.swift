//
//  ResultViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var showResult: UILabel!
    
    var result: Int!
    var question: Question!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSet()
    }
    
    func initialSet() {
        question.rating = result
        if result <= 1 {
            emojiLabel.text = "🐱"
            showResult.text = question.getRating
        } else if result <= 2 {
            emojiLabel.text = "💥"
            showResult.text = question.getRating
        } else {
            emojiLabel.text = "🐒"
            showResult.text = question.getRating
        }
    }

}
