//
//  Model.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import Foundation

struct User {
    var login: String
    var password: String
    var name: String
    
    static func getUserData() -> User {
        User(
            login: DataManager.shared.login,
            password: DataManager.shared.password,
            name: DataManager.shared.name
        )
        
    }
}


