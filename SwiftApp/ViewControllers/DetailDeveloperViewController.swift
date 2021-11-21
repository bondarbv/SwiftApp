//
//  DetailDeveloperViewController.swift
//  SwiftApp
//
//  Created by Alik Nigay on 21.11.2021.
//

import UIKit

class DetailDeveloperViewController: UIViewController {
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var gitLabel: UILabel!
    @IBOutlet weak var avatarLabel: UILabel!
    
    var image: String!
    var name: String!
    var git: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    private func initialSetup() {
        nameLable.text = "Имя - \(name!)"
        gitLabel.text = "Git - \(git!)"
        avatarLabel.text = image
    }
}
