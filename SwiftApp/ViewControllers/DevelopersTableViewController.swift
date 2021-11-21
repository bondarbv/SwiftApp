//
//  DevelopersTableViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class DevelopersTableViewController: UITableViewController {
    
    private let array = DataManager.shared.arraysDevelopers

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "devs", for: indexPath)
        let person = array[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.name
        content.secondaryText = "Git - \(person.git)"
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailDeveloperVC = segue.destination as? DetailDeveloperViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = array[indexPath.row]
        detailDeveloperVC.name = person.name
        detailDeveloperVC.git = person.git
        detailDeveloperVC.image = person.image
    }
}
