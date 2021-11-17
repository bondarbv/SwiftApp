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
    
    private var level: LevelQuestion = .middle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSet()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let taskTVC = segue.destination as? TasksTableViewController else { return }
        let array = DataModel(lvl: level).getDataForCells()
        taskTVC.titleArray = array
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        if sender.value < 0.25 {
            displayView.text = "Легкий"
            level = .easy
        } else if sender.value < 0.75 {
            displayView.text = "Средний"
            level = .middle
        } else {
            displayView.text = "Сложный"
            level = .hard
        }
    }
    private func initialSet() {
        displayView.text = "Средний"
        slider.value = 0.5
    }
    
}
