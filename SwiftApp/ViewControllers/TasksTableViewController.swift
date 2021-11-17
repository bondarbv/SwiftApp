//
//  TasksTableViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class TasksTableViewController: UITableViewController {
    
//    private let arrayOfTasks = Questions.easy

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "task", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = "Easy"
        content.secondaryText = "If you wanna warm up"
        cell.contentConfiguration = content
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let firstQuestionVC = segue.destination as? FirstQuestionViewController else { return }
        
    }
}
