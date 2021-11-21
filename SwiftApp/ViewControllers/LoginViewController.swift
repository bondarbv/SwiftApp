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
    
    @IBOutlet weak var loginButton: UIButton!
    
    private var user: User!
    
    // MARK: - Keyboard Delegate -
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let tabBarController = navigationVC.topViewController as? TabBarController else { return }
        tabBarController.user = user
    }
    
    // MARK: - ABActions
    @IBAction func logInButtonPressed() {
        guard let login = loginField.text, let password = passwordField.text else { return }
        user = User.getPerson(login, password)
        if loginField.text == user.login && passwordField.text == user.password {
        } else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password")
        }
    }
    
    @IBAction func logInReminder() {
        showAlert(title: "Oops!", message: "Your name is T or Test 😉")
        return
    }
    
    @IBAction func passwordReminder() {
        showAlert(title: "Oops!", message: "Your password is 1 of 1234😉")
        return
    }
    
    private func initialSetup() {
       loginButton.layer.cornerRadius = 15
        
        let upColor = UIColor(red: 1.00, green: 0.83, blue: 0.19, alpha: 1.00)
        let bottomColor = UIColor(red: 0.98, green: 0.51, blue: 0.19, alpha: 1.00)
        view.gradient(upColor: upColor, bottomColor: bottomColor)
    }
}

//MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//MARK: - UITextFieldDelegate
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

extension UIView {
    func gradient(upColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [upColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
