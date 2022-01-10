//
//  ViewController.swift
//  LoginApp
//
//  Created by Юрий Скворцов on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userName = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTextField.text ?? ""
    }
    
    @IBAction func loginButtonPressed() {
        guard let inputName = userNameTextField.text else { return }
        guard let inputPassword = passwordTextField.text else { return }
        
        if inputName != userName || inputPassword != password {
            showAlert(title: "Wrong user name or password", message: "Please try again")
        }
    }
    
    @IBAction func forgotUNButtonPressed() {
        showHelp(title: "Oops!😉", message: "Your user name is \(userName)")
    }
    
    @IBAction func forgotPWButtonPressed() {
        showHelp(title: "Oops!😉", message: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        present(alert, animated: true)
        alert.addAction(okAction)
    }
    
    private func showHelp(title: String, message: String) {
        let help = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let thanksAction = UIAlertAction(title: "Thanks!", style: .default)
        
        present(help, animated: true)
        help.addAction(thanksAction)
    }
}

extension ViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

