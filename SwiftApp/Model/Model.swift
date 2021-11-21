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
                "Легкий уровень: Типы данных",
                "Легкий уровень: Операторы",
                "Легкий уровень: Массивы",
                "Легкий уровень: Опционалы",
                "Легкий уровень: Замыкания"
            ]
        case .middle:
            arrayTitle = [
                "Средний уровень: Типы данных",
                "Средний уровень: Операторы",
                "Средний уровень: Массивы",
                "Средний уровень: Опционалы",
                "Средний уровень: Замыкания"
            ]
        case .hard:
            arrayTitle = [
                "Тяжелый уровень: Типы данных",
                "Тяжелый уровень: Операторы",
                "Тяжелый уровень: Массивы",
                "Тяжелый уровень: Опционалы",
                "Тяжелый уровень: Замыкания"
            ]
        }
        
        return arrayTitle
    }
    
    static func getQuestion(for theme: String) -> Question {
        let arrays = DataManager.shared
        
        switch theme {
        case "Легкий уровень: Типы данных":
            return Question(questions: arrays.dataTypesEasyQuestions,
                            answers: arrays.dataTypesEasyAnswers,
                            rating: 1)
        case "Легкий уровень: Операторы":
            return Question(questions: arrays.operatorsEasyQuestions,
                            answers: arrays.operatorsEasyAnswers,
                            rating: 1)
        case "Легкий уровень: Массивы":
            return Question(questions: arrays.arraysEasyQuestions,
                            answers: arrays.arraysEasyAnswers,
                            rating: 1)
        case "Легкий уровень: Опционалы":
            return Question(questions: arrays.optionalsEasyQuestions,
                            answers: arrays.optionalsEasyAnswers,
                            rating: 1)
        case "Легкий уровень: Замыкания":
            return Question(questions: arrays.closuresEasyQuestions,
                            answers: arrays.closuresEasyAnswers,
                            rating: 1)
        case "Средний уровень: Типы данных":
            return Question(questions: arrays.dataTypesMiddleQuestions,
                            answers: arrays.dataTypesMiddleAnswers,
                            rating: 2)
        case "Средний уровень: Операторы":
            return Question(questions: arrays.operatorsMiddleQuestions,
                            answers: arrays.operatorsMiddleAnswers,
                            rating: 2)
        case "Средний уровень: Массивы":
            return Question(questions: arrays.arraysMiddleQuestions,
                            answers: arrays.arraysMiddleAnswers,
                            rating: 2)
        case "Средний уровень: Опционалы":
            return Question(questions: arrays.optionalsMiddleQuestions,
                            answers: arrays.optionalsMiddleAnswers,
                            rating: 2)
        case "Средний уровень: Замыкания":
            return Question(questions: arrays.closuresMiddleQuestions,
                            answers: arrays.closuresMiddleAnswers,
                            rating: 2)
        case "Тяжелый уровень: Типы данных":
            return Question(questions: arrays.dataTypesHardQuestions,
                            answers: arrays.dataTypesHardAnswers,
                            rating: 3)
        case "Тяжелый уровень: Операторы":
            return Question(questions: arrays.operatorsHardQuestions,
                            answers: arrays.operatorsHardAnswers,
                            rating: 3)
        case "Тяжелый уровень: Массивы":
            return Question(questions: arrays.arraysHardQuestions,
                            answers: arrays.arraysHardAnswers,
                            rating: 3)
        case "Тяжелый уровень: Опционалы":
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

