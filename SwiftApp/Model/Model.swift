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

enum Questions: String {
  
    case easy
    case middle
    case hard
    
    var definitions: [String] {
        switch self {
       case .easy:
           return DataManager.shared.easyQuestions
        case .middle:
           return DataManager.shared.middleQuestions
       case .hard:
            return DataManager.shared.hardQuestions
        }
        
}
    
    func getQuestions(case: Questions, index: Int) -> String {
        
       let question = definitions[index]
        
        return question
    }
    
}


