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
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var button: UIButton!
    
    var name: String!
    var image: String!
    var person: Person!
    var result = ""
    var progress = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        guard let resultVC = segue.source as? ResultViewController else { return }
        let rating = resultVC.question.getRating
        ratingLabel.text = rating
    }
    
    private func updateUI() {
        nameLabel.text = name
        ratingLabel.text = result
        imageView.image = UIImage(named: image)
        imageView.layer.cornerRadius = 30
        button.layer.cornerRadius = 15
    }
}
