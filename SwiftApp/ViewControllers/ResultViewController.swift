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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let profileVC = segue.destination as? ProfileViewController else { return }
        profileVC.result = question.getRating
    }
    
    private func initialSet() {
        question.rating = result
        
        switch result {
        case 1,2,3:
            emojiLabel.text = "🐱"
            showResult.text = question.getRating
        case 4,5,6:
            emojiLabel.text = "💥"
            showResult.text = question.getRating
        case 7,8,9:
            emojiLabel.text = "🐒"
            showResult.text = question.getRating
        default:
            emojiLabel.text = "Что-то пошло не так 😕"
            showResult.text = question.getRating
        }

    }

}
