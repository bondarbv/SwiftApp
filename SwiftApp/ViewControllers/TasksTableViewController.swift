//
//  TasksTableViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class TasksTableViewController: UITableViewController {
    
    var titleArray: [String]!
    var level: LevelQuestion!
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        titleArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "task", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let titleForCell = titleArray[indexPath.row]
        content.text = titleForCell
        cell.contentConfiguration = content
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let firstQuestionVC = segue.destination as? FirstQuestionViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let title = titleArray[indexPath.row]
        let array = DataModel.getQuestion(for: title)
        firstQuestionVC.question = array
        firstQuestionVC.increaseValue = array.rating
    }
}
