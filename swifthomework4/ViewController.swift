//
//  ViewController.swift
//  swifthomework4
//
//  Created by Томик on 10.12.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Задание 1 - функция вычисления факториала через передачу массива в параметр функции
        
        func factorials(_ array: [Int]) {
            for number in array {
                var factorial = 1
                for num in 1...number {
                    factorial *= num
                }
                print("Фактор числа \(number) равен \(factorial)")
            }
        }
        
        let array1 = [2,4,6,8,10,12]
        print(factorials(array1))
        
        
        //Задание 2 - Массив из кортежей - возвести Int в квадрат
        var myArray = [(1, "x"), (4, "y"), (6, "a"), (9, "u"), (5, "k")]
        let squaredArray = myArray.map { tuple -> (Int, String) in
            if let squared = tuple.0 as? Int {
                return (squared * squared, tuple.1)
            } else {
                return tuple
            }
        }
        print(squaredArray)
        
        //вывести только четные Int -> [4, 6]
        let evenNumbersInArray = squaredArray.filter { $0.0 % 2 == 0 }.map { $0.0 }
        print(evenNumbersInArray)
        
        //упорядочить по строкам по возрастанию -> [a, k, u, x, y]
        let sortedStrings = squaredArray.map { $0.1 }.sorted()
        print(sortedStrings)
        
        //дополнительные задания
        //*Задание 3 - Hаписать список книг и отфильтровать книги по жанрам -> horror = []
        var books =
        ["Book001": ["title": "Swift Programming", "genre": "Education"],
         "Book002": ["title": "The Alchemist", "genre": "Fiction"],
         "Book003": ["title": "The Catcher in the Rye", "genre": "Fiction"],
         "Book004": ["title": "Dracula", "genre": "Horror"]
        ]
        
        let filteredBooks = books.filter { $0.value["genre"] == "Fiction" }
        print(filteredBooks)
        
        //*Задание 4 - объединить 2 массива. первый массив это название групп. второй название песен
        var groups = ["Cage the Elephant", "The Pretty Reckless", "Radiohead"]
        var songs = ["Black Madonna", "My medicine", "Creep"]
        let combinedArray = zip(groups, songs).flatMap { [$0, $1] }
        print(combinedArray)
        
        
        //*Задание 5: Создать функцию которая принимает массив чисел и умножает каждое число на 2 используя функцию map.
        func multiplyByTwo(_ arr: [Int?]) -> [Int] {
            var result = [Int]()
            for num in arr {
                result.append((num ?? 1) * 2)
            }
            return result
        }

        let arrayWithNil = [2, nil, 4, nil, 3, 8, nil]
        let arrayNeeded = multiplyByTwo(arrayWithNil)
        print(arrayNeeded)

        
        

        
        
        
        

    }


}

