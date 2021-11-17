//
//  ChooseLevelViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class ChooseLevelViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var displayView: UILabel!
    
    var selectedTheme: String!
    private var selectedLevel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let taskTVC = segue.destination as? TasksTableViewController else { return }
        
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        if sender.value < 0.25 {
            displayView.text = "Easy"
        } else if sender.value < 0.75 {
            displayView.text = "Medium"
        } else {
            displayView.text = "Hard"
        }
    }
    
}
