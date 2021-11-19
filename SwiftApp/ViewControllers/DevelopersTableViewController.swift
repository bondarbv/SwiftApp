//
//  DevelopersTableViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class DevelopersTableViewController: UITableViewController {
    
    let array = DataManager.shared.arraysDevelopers

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "devs", for: indexPath)
        let person = array[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person
        cell.contentConfiguration = content
        return cell
    }
}
