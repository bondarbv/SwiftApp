//
//  ViewController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    var person = User.getPerson()
    
    private let login = User.getPerson().login
    private let password = User.getPerson().password
    
    // MARK: - Keyboard Delegate -

    override func viewDidLoad() {
        super.viewDidLoad()
        loginField.delegate = self
        loginField.returnKeyType = .next
        
        passwordField.delegate = self
        passwordField.returnKeyType = .done
        
        passwordField.isEnabled = true
        passwordField.enablesReturnKeyAutomatically = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let tabBarController = navigationVC.topViewController as? TabBarController else { return }
        tabBarController.person =  person
    }
    
    // MARK: - ABActions -
    @IBAction func logInButtonPressed() {
        if loginField.text == login && passwordField.text == password {
        } else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password")
        }
    }
    
    @IBAction func logInReminder() {
        showAlert(title: "Oops!", message: "Your name is B 😉")
        return
    }
    
    @IBAction func passwordReminder() {
        showAlert(title: "Oops!", message: "Your password is 1 😉")
        return
    }
    

    //MARK: - Alert Controller -

}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginField {
            passwordField.becomeFirstResponder()
        } else {
            logInButtonPressed()
            performSegue(withIdentifier: "GoToHell", sender: nil)
        }
        return true
    }

}

