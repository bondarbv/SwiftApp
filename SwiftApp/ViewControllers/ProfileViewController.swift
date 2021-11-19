//
//  ProfileViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var name = "Vasya"
    var result = "Пока ничего 😌"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
        ratingLabel.text = result
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let changeVC = segue.destination as? ChangeProfileViewController else { return }
        changeVC.name = name
    }
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
//        guard let changeVC = segue.source as? ChangeProfileViewController else { return }
//        nameLabel.text = changeVC.newName
        guard let resultVC = segue.source as? ResultViewController else { return }
        let rating = resultVC.question.getRating
        ratingLabel.text = rating
        
    }
    
    private func updateLabel() {
        nameLabel.text = name
    }

}
