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
    
    func getQuestions() -> String {
        var question = " "
        for index in 0..<definitions.count{
            question = definitions[index]
        }
        return question
    }
    
}
