//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Юрий Скворцов on 11.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hello, \(userName)"
    }
}
