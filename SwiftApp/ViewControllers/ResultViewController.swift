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
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(result)
        initialSet()
    }
    
    func initialSet() {
        if result <= 10 {
            emojiLabel.text = "🐱"
            showResult.text = String(result)
        } else if result <= 30 {
            emojiLabel.text = "💥"
            showResult.text = String(result)
        } else {
            emojiLabel.text = "🐒"
            showResult.text = String(result)
        }
    }

}
