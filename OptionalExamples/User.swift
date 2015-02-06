//
//  User.swift
//  OptionalExamples
//
//  Created by Thijs de Vries on 2/1/15.
//  Copyright (c) 2015 PatientsLikeMe. All rights reserved.
//

import UIKit

let users = [
    User(firstName: "Tobias", lastName: "Fünke", username: "frightenedinmate2", password: "gymnophobic"),
    User(firstName: "GOB", lastName: "Bluth", username: "magicGOB", password: "2000dollarsuit"),
]

class User {
    var firstName: String 
    var lastName: String
    var username: String
    var password: String

    init(firstName: String, lastName: String, username: String, password: String) {
      self.firstName = firstName
      self.lastName = lastName
      self.username = username
      self.password = password
    }

    class func authenticateUsername(username: String, password: String) -> Bool {
        for user in users {
            if user.password == password && user.username == username {
                return true
            }
        }

        return false
    }
}
