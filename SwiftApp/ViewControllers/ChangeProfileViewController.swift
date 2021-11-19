//
//  ChangeProfileViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class ChangeProfileViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTF: UITextField!
    var name: String!
    var newName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.text = name
        nameTF.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let profileVC = segue.destination as? ProfileViewController else { return }
        profileVC.name = nameTF.text ?? "Nothing"
        print(nameTF.text)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        newName = nameTF.text
        return true
    }
    
}


