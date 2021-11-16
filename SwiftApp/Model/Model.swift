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
    
    enum Level: String {
        case easy
        case middle
        case hard
        var definitions: [ <#type#> ] {
                switch self {
                case .easy:
                    return EasyQuestion.getEasyQuestions()
                case .middle:
                    return MiddleQuestion.getMiddleQuestions()
                case .hard:
                    return HardQuestion.getHardQuestions()
                }
            }
        
            func getQuestions(case: Level, index: Int) -> String {
                let question = definitions[index]
                return question
            }
    }


    struct EasyQuestion {
        let Question: String
        let Answer: String
        let rating: Int
        
        var ratingBar: String {
            String(repeating: "", count: rating)
        }
        
        static func getEasyQuestions() -> [EasyQuestion] {
            [
                EasyQuestion(
                    Question: "",
                    Answer: "",
                    rating: 1
                ),
                EasyQuestion(
                    Question: "",
                    Answer: "",
                    rating: 1
                ),
                EasyQuestion(
                    Question: "",
                    Answer: "",
                    rating: 1
                )
            ]
        }
    }

    struct MiddleQuestion {
        let Question: String
        let Answer: String
        let rating: Int
        
        var ratingBar: String {
            String(repeating: "", count: rating)
        }
        
        static func getMiddleQuestions() -> [MiddleQuestion] {
            [
                MiddleQuestion(
                    Question: "",
                    Answer: "",
                    rating: 2
                ),
                MiddleQuestion(
                    Question: "",
                    Answer: "",
                    rating: 2
                ),
                MiddleQuestion(
                    Question: "",
                    Answer: "",
                    rating: 2
                )
            ]
        }
    }

    struct HardQuestion {
        let Question: String
        let Answer: String
        let rating: Int
        
        var ratingBar: String {
            String(repeating: "", count: rating)
        }
        
        static func getHardQuestions() -> [HardQuestion] {
            [
                HardQuestion(
                    Question: "",
                    Answer: "",
                    rating: 3
                ),
                HardQuestion(
                    Question: "",
                    Answer: "",
                    rating: 3
                ),
                HardQuestion(
                    Question: "",
                    Answer: "",
                    rating: 3
                )
            ]
        }
    }
    static func getUserData() -> User {
        User(
            login: DataManager.shared.login,
            password: DataManager.shared.password,
            name: DataManager.shared.name
        )
    }
}

//struct easyQuestion {
//    let title = DataManager.shared.easyQuestions
//    let answers = DataManager.shared.answers
//    static func getQuestions() -> [easyQuestion] {
//        [
//        ]
        //        var questions: [easyQuestion] = []
        //
        //        let easyQuestions = DataManager.shared.easyQuestions.shuffled()
        //        let iterationCount = min(easyQuestions.count, answers.count)
        //
        //        for index in 0..<iterationCount {
        //            let question = easyQuestion()
        //            questions.append(question)
        //        }
        //        return questions
//    }
//}

//struct middleQuestion {
//    let title = DataManager.shared.middleQuestions
//    let answers = DataManager.shared.answers
//    static func getQuestions() -> [middleQuestion] {
//        [
//        ]
//    }
//}

//struct hardQuestion {
//    let title = DataManager.shared.hardQuestions
//    let answers = DataManager.shared.answers
//    static func getQuestions() -> [hardQuestion] {
//        [
//        ]
//    }
//}


//enum Questions: String {
//    case easy
//    case middle
//    case hard
//
//    var definitions: [String] {
//        switch self {
//        case .easy:
//            return DataManager.shared.easyQuestions
//        case .middle:
//            return DataManager.shared.middleQuestions
//        case .hard:
//            return DataManager.shared.hardQuestions
//        }
//
//    }
//
//    func getQuestions(case: Questions, index: Int) -> String {
//        var question = " "
//        for index in 0..<definitions.count{
//            question = definitions[index]
//        }
//        return question
//    }
//
//}
