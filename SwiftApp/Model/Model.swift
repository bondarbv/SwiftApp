//
//  Model.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import Foundation

struct Developers {
    let name: String
    let git: String
    let image: String
}

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getPerson(_ login: String, _ password: String) -> User {
        let storageUsers = DataManager.shared.storageArray
        var currentUser = User(login: " ", password: " ", person: Person(name: "", surName: "", image: ""))
        for user in storageUsers {
            if user.login == login && user.password == password {
                currentUser = user
            }
        }
        return currentUser
    }
}

struct Person {
    let name: String
    let surName: String
    let image: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
}

struct Question {
    let questions: [String]
    let answers: [String]
    var rating: Int
    var getRating: String {
        String(repeating: "⭐️", count: rating)
    }
}

enum LevelQuestion {
    case easy
    case middle
    case hard
}

struct DataModel {
    let lvl: LevelQuestion
    
    func getDataForCells() -> [String] {
        var arrayTitle:[String] = []
        switch lvl {
        case .easy:
            arrayTitle = [
                "Easy Data types questions",
                "Easy Operators questions",
                "Easy Arrays questions",
                "Easy Optionals questions",
                "Easy Closures questions"
            ]
        case .middle:
            arrayTitle = [
                "Middle Data types questions",
                "Middle Operators questions",
                "Middle Arrays questions",
                "Middle Optionals questions",
                "Middle Closures questions"
            ]
        case .hard:
            arrayTitle = [
                "Hard Data types Theme",
                "Hard Operators Theme",
                "Hard Arrays Theme",
                "Hard Optionals questions",
                "Hard Closures questions"
            ]
        }
        
        return arrayTitle
    }
    
    static func getQuestion(for theme: String) -> Question {
        let arrays = DataManager.shared
        
        switch theme {
        case "Easy Data types questions":
            return Question(questions: arrays.dataTypesEasyQuestions,
                            answers: arrays.dataTypesEasyAnswers,
                            rating: 1)
        case "Easy Operators questions":
            return Question(questions: arrays.operatorsEasyQuestions,
                            answers: arrays.operatorsEasyAnswers,
                            rating: 1)
        case "Easy Arrays questions":
            return Question(questions: arrays.arraysEasyQuestions,
                            answers: arrays.arraysEasyAnswers,
                            rating: 1)
        case "Easy Optionals questions":
            return Question(questions: arrays.optionalsEasyQuestions,
                            answers: arrays.optionalsEasyAnswers,
                            rating: 1)
        case "Easy Closures questions":
            return Question(questions: arrays.closuresEasyQuestions,
                            answers: arrays.closuresEasyAnswers,
                            rating: 1)
        case "Middle Data types questions":
            return Question(questions: arrays.dataTypesMiddleQuestions,
                            answers: arrays.dataTypesMiddleAnswers,
                            rating: 2)
        case "Middle Operators questions":
            return Question(questions: arrays.operatorsMiddleQuestions,
                            answers: arrays.operatorsMiddleAnswers,
                            rating: 2)
        case "Middle Arrays questions":
            return Question(questions: arrays.arraysMiddleQuestions,
                            answers: arrays.arraysMiddleAnswers,
                            rating: 2)
        case "Middle Optionals questions":
            return Question(questions: arrays.optionalsMiddleQuestions,
                            answers: arrays.optionalsMiddleAnswers,
                            rating: 2)
        case "Middle Closures questions":
            return Question(questions: arrays.closuresMiddleQuestions,
                            answers: arrays.closuresMiddleAnswers,
                            rating: 2)
        case "Hard Data types Theme":
            return Question(questions: arrays.dataTypesHardQuestions,
                            answers: arrays.dataTypesHardAnswers,
                            rating: 3)
        case "Hard Operators Theme":
            return Question(questions: arrays.operatorsHardQuestions,
                            answers: arrays.operatorsHardAnswers,
                            rating: 3)
        case "Hard Arrays Theme":
            return Question(questions: arrays.arraysHardQuestions,
                            answers: arrays.arraysHardAnswers,
                            rating: 3)
        case "Hard Optionals Theme":
            return Question(questions: arrays.optionalsHardQuestions,
                            answers: arrays.optionalsHardAnswers,
                            rating: 3)
        default:
            return Question(questions: arrays.closuresHardQuestions,
                            answers: arrays.closuresHardAnswers,
                            rating: 3)
        }
    }
}

