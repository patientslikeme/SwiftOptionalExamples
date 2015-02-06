//
//  ViewController.swift
//  OptionalExamples
//
//  Created by Thijs de Vries on 2/1/15.
//  Copyright (c) 2015 PatientsLikeMe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var authenticateButton: UIBarButtonItem!

    @IBAction func authenticate() {
        // prevent double taps
        authenticateButton.enabled = false

        let username = usernameField.text
        let password = passwordField.text

        if User.authenticateUsername(username, password: password) {
            let alert = UIAlertController(title: "Good job",
                message: "thanks for visiting",
                preferredStyle: .Alert)

            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))

            presentViewController(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Bad username or password",
                message: "You have supplied a bad username or password",
                preferredStyle: .Alert)

            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))

            presentViewController(alert, animated: true, completion: nil)
        }

        authenticateButton.enabled = true
    }
}
