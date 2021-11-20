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
    @IBOutlet weak var textView: UITextView!
    
    var result: Int!
    var question: Question!
    var failed: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSet()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let profileVC = segue.destination as? ProfileViewController else { return }
        let score = question.getRating
        profileVC.result = score
        profileVC.progressView.progress = Float(score.count) / 9.0
    }
    
    private func initialSet() {
        question.rating = result
        
        switch result {
        case 1,2,3:
            emojiLabel.text = "🐱"
            showResult.text = question.getRating
        case 4,6:
            emojiLabel.text = "💥"
            showResult.text = question.getRating
        case 7,8,9:
            emojiLabel.text = "🐒"
            showResult.text = question.getRating
        default:
            emojiLabel.text = "😕"
            showResult.text = question.getRating
        }
        
        textView.text = """
        Вы допустили ошибку в этих вопросах:
        \( failed.joined(separator: "❌ \n"))"
        """
        
    }
    
}
