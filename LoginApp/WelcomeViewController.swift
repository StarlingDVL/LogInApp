//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Юрий Скворцов on 11.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = userName
    }
}
