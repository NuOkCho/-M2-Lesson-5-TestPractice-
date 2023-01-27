//
//  main.swift
//  (M2)Lesson-5(TestPractice)
//
//  Created by Ahmed Muvaza on 27/1/23.
//

import Foundation

print("Hello, World!")

class MillionaireGame{
    var playerName: String
    var score: Int
    var questions: [(String, String, String, String, String)]
    var history: [(String, Int)] = []

    init(playerName: String){
        self.playerName = playerName
        self.score = 0
        self.questions = [
            ("Вопрос 1: В каком году открылся GeekTech?", "2018 год", "2022", "1996", "2005"),
            ("Вопрос 2: В каком году Кыргызстан приобрел независимость?", "1991", "1990", "Кыргызстан всегда был независимым", "2006"),
            ("Вопрос 3: Год рождения Нурсултана Назарбаева?", "1940", "1921", "2018", "2023"),
            ("Вопрос 4: Насколько часто меняются президенты в Кыргызстане?", "Каждые 5 лет", "Никогда", "Каждые 20 лет", "каждые 7 лет"),
            ("Вопрос 5: Год основания компании Apple?", "1 апреля 1976", "1921", "2023", "1994"),
        ]
    }
    
    func play() {
        for question in questions{
            print(question.0)
            print("A. \(question.1)")
            print("B. \(question.2)")
            print("C. \(question.3)")
            print("D. \(question.4)")
            print("Введите правильный вариант ответа: ", terminator: "")

            let answer = readLine()
            if answer == "A"{
                score += 1000
                print("Правильно! теперь у вас \(score) сомов")
            } else{
                history.append((playerName, score))
                print("Вы проиграли. Ваш конечный счет \(score)")
                break
            }
        }
    }
}

let game = MillionaireGame(playerName: "Иван")
game.play()
