//
//  DataManager.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    //MARK: - Easy Question
    // Data types question
    let dataTypesEasyQuestions: [String] = [
        "Тип данных String обеспечивает хранение отдельных символов?",
        "var isVisible = false - создаёт переменную типа Bool?",
        "Можно ли использовать параметр до инициализации ему значения?"
    ]
    let dataTypesEasyAnswers = [
        "Нет",
        "Да",
        "Нет"
    ]
    // Operators questions
    let operatorsEasyQuestions: [String] = [
        "break - пропускает итерацию, continue - выходит из цикла?",
        "repeat while и for позволяют многократно исполнять определенный блок кода?",
        "В Swift есть операторы исключения выполнения?"
    ]
    let operatorsEasyAnswers = [
        "Нет",
        "Да",
        "Нет"
    ]
    // Arrays questions
    let arraysEasyQuestions: [String] = [
        "Для доступа к элементам массива мы оспользуем индекс?",
        "Массив - упорядоченная коллекция однотипных элементов?",
        "Если массив присвоен константе, можем ли мы добавить новые элементы?"
    ]
    let arraysEasyAnswers = [
        "Да",
        "Да",
        "Нет"
    ]
    // Optionals questions
    let optionalsEasyQuestions: [String] = [
        "Опциональный тип данных позволяет переменной или константе иметь какое-либо четко определенное значение, или не иметь его вовсе?",
        "Значение целочисленного опционального типа может быть сложено со значением типа Int без дополнительных преобразований?",
        "Опционалы позволяют смоделировать ситуацию отсутствия значения в параметре?"
    ]
    let optionalsEasyAnswers = [
        "Да",
        "Нет",
        "Да"
    ]
    // Closures questions
    let closuresEasyQuestions: [String] = [
        "Является ли функция, возвращающее значение, замыканием?",
        "Может ли замыкание быть результатом вызова функции (возвращено функцией после исполнения)?",
        "Ключевое слово in в замыкании указывает на то, что далее следует тело замыкания?"
    ]
    let closuresEasyAnswers = [
        "Да",
        "Да",
        "Да"
    ]
    
    //MARK: - Middle Question
    // Data types question
    let dataTypesMiddleQuestions: [String] = [
        "let size = '14.0' создается параметр типа Float?",
        "var thisIsMyVar: String = '' - явное определение типа данных?",
        "Тип данных определяет значение и операции со значением?"
    ]
    let dataTypesMiddleAnswers = [
        "Нет",
        "Да",
        "Да"
    ]
    // Operators questions
    let operatorsMiddleQuestions: [String] = [
        "Может ли оператор присваивания возвращать значение?",
        "Тернарные операторы - операторы, применяемые к 3м величинам?",
        "Постфиксные - операторы, которые ставятся сразу за величиной?"
    ]
    let operatorsMiddleAnswers = [
        "Нет",
        "Да",
        "Да"
    ]
    // Arrays questions
    let arraysMiddleQuestions: [String] = [
        "Цикл for-in выполняет самое простое итерирование массива?",
        "array.removeLast() - позволяет удалить последний элемент массива и сразу вернуть его?",
        ".append - добавляет элемент в конец массива?"
    ]
    let arraysMiddleAnswers = [
        "Да",
        "Да",
        "Да"
    ]
    // Optionals questions
    let optionalsMiddleQuestions: [String] = [
        "Можем ли мы использовать значение с типом Int? как операнд в математической операции?",
        "String! является неявно извлечённым опционалом?",
        "Мы используем ?? для принудительного извлечения опционала?"
    ]
    let optionalsMiddleAnswers = [
        "Нет",
        "Да",
        "Нет"
    ]
    // Closures questions
    let closuresMiddleQuestions: [String] = [
        "метод sort позволяет отсортировать массив значений на основании переданного в него замыкания?",
        "Могут ли замыкания возвращать коллекции и кортежи в качестве возвращаемых значений?",
        "Мы удаляем элемент массива кодом внктри замыкания, будет ли он удалён, если мы не вызывали это замыкание?"
    ]
    let closuresMiddleAnswers = [
        "Да",
        "Да",
        "Нет"
    ]
    
    //MARK: - Hard Question
    // Data types question
    let dataTypesHardQuestions: [String] = [
        "Являются ли фундаментальные типы Bool, String и Int хешируемыми?",
        "Тип данных Int имеет 16-ти битную разрядность?",
        "Приведение - механизм, позволяющий преобразовать один тип данных в другой?"
    ]
    let dataTypesHardAnswers = [
        "Да",
        "Нет",
        "Да"
    ]
    // Operators questions
    let operatorsHardQuestions: [String] = [
        "Swift поддерживает 6 операторов сравнения?",
        "Можно ли сравнивать между собой два кортежа с типом (String, Bool)?",
        "выражение ? действие1 : действие2 - бинарный условный оператор?"
    ]
    let operatorsHardAnswers = [
        "Да",
        "Нет",
        "Нет"
    ]
    // Arrays questions
    let arraysHardQuestions: [String] = [
        "var array = (String)[] - создаёт пустой массив?",
        "Свойство .insert позволяет создать новый массив, объеденив два массива с совместимыми типами?",
        "Метод add(_ :at:) позволяет вставить элемент в массив на определённый индекс?"
    ]
    let arraysHardAnswers = [
        "Нет",
        "Нет",
        "Нет"
    ]
    // Optionals questions
    let optionalsHardQuestions: [String] = [
        "Сравнивая с nil через if мы можем проверить, содержит ли опционал значение?",
        "Когда попытаемся получить доступ к неявно извлечённому опционалу, когда он не содержит значания, мы получим Runtime error?",
        "Если мы точно уверены, что опционал имеет значение, наиболее быстрый способ получить его - принудительное извлечение(!)?"
    ]
    let optionalsHardAnswers = [
        "Да",
        "Да",
        "Да"
    ]
    // Closures questions
    let closuresHardQuestions: [String] = [
        "Можем ли мы опустить функциональный тип тип замыкающего выражения?",
        "Можем ли мы передать значения по умолчанию в синтаксис замыканий?",
        "Вложенные функции - замыкания, у которых есть имя и которые могут захватывать значения из включающей их функции?"
    ]
    let closuresHardAnswers = [
        "Да",
        "Нет",
        "Да"
    ]
    
}
