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
    @IBOutlet weak var firstFail: UILabel!
    @IBOutlet weak var seondFail: UILabel!
    
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
        failAnswer()
    }
    
    private func failAnswer() {
        if failed.count == 2 {
            firstFail.text = "Вы допустили ошибки в этих вопросах:"
            seondFail.text = failed.joined(separator: "❌\n") + "❌"
            emojiLabel.text = "🐱"
            showResult.text = question.getRating
            view.backgroundColor = .systemOrange
        } else if failed.count == 1 {
            firstFail.text = "Вы допустили ошибку в этом вопросe:"
            seondFail.text = failed.joined(separator: "❌\n") + "❌"
            emojiLabel.text = "💥"
            showResult.text = question.getRating
            view.backgroundColor = .systemMint
        } else if failed.count > 2 {
            firstFail.text = "Похоже кто-то плохо учил теорию..."
            seondFail.text = failed.joined(separator: "❌\n") + "❌"
            emojiLabel.text = "😕"
            showResult.text = question.getRating
            view.backgroundColor = .systemRed
        } else {
            firstFail.text = "Всё отлично! Вы не допустили ошибок в тесте, так держать!"
            emojiLabel.text = "🐒"
            showResult.text = question.getRating
        }
    }
}
