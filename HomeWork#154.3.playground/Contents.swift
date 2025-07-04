import UIKit
import Foundation

// Задача №3.2 Поиск простых чисел

func findPrimes(upTo n: Int) -> [Int] {
    guard n >= 2 else { return [] }

    var primes: [Int] = []

    for number in 2...n {
        var isPrime = true
        for divisor in 2..<number {
            if number % divisor == 0 {
                isPrime = false
                break
            }
        }
        if isPrime {
            primes.append(number)
        }
    }

    return primes
}

let primesArray = findPrimes(upTo: 13)
print(primesArray)


// Задача №3.3 Рекурсивный факториал

func factorialRecursive(numberN: Int) -> Int {
    
    if numberN == 0 || numberN == 1 {
        return 1
    } else {
        return numberN * factorialRecursive(numberN: numberN - 1)
    }
}
let recursive = factorialRecursive(numberN: 4)
print("рекурсивный факториал числа = \(recursive)")
// Задача №3.5 Подсчёт букв и цифр

//let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
//let letter = ["A", "a", "B", "b", "C", "c", "D", "d", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "K", "k", "L", "l", "M", "m", "N", "n", "O", "o", "P", "p", "Q", "q", "R", "r", "S", "s", "T", "t", "U", "u", "V", "v", "W", "w", "X", "x", "Y", "y", "Z", "z"]

func countLettersAndDigits(input: String) -> (letters: Int, digits: Int) {
   
    let isNumber = input.contains
    { $0.isNumber }
    let isLetter = input.contains
    { $0.isLetter }
    var letterCount = 0
    var digitsCount = 0
    
    for items in input {
        if items.isNumber {
            digitsCount += 1
        } else if items.isLetter {
            letterCount += 1
        }
    }
    
    return (letters: letterCount, digits: digitsCount)
}
let count = countLettersAndDigits(input: "asadkF123FC2313f")
print(count)


// Задача №3.1 Числа Фибоначи

//func fibonacci(n: Int) -> Int {
//guard n >= 0 else {
//    return 0
//}
//
//var a = 0, b = 1
//for _ in 0..<n {
//    (a, b) = (b, a + b)
//}
//return a
//}
func fibonacciSequence(count: Int) -> [Int] {
    var fiboCount = [Int]()
    guard count >= 0 else {
        return []
    }
    
    var a = 0
    var b = 1
    fiboCount.append(a)
    fiboCount.append(b)
    
    for number in 0..<count {
        var x = 0
        var y = 0
        
        if ((a, b) == (b, a + b)) {
            fiboCount.append(number)
        }
    }
    return fiboCount
}

fibonacciSequence(count: 13)

// Задача №3.4 Разбиение строки

func splitString(by: String) {
    print(by.split(separator: ","))
}
splitString(by: "apple,banana,cherry")

// ДОПОЛНИТЕЛЬНЫЕ ЗАДАЧИ

// Задача №3 Удаление дубликатов

func removeDuplicates(arrayA: [Int]) -> [Int] {
    var arrayB = [Int]()
    
    for number in arrayA {
        if !arrayB.contains(number) {
            arrayB.append(number)
        }
    }
    return arrayB
}

removeDuplicates(arrayA: [1, 1, 1, 2, 3, 4, 5, 5, 6, 7, 8, 8, 8, 8, 9, 9])

// Задача №1 Перевод температуры

enum temperature {
    case f
    case c
    case k
}

func convertTemperature(value: Double, from: temperature, to: temperature) {
    var c = 1.0
    var f = (c * 1.8) + 32
    var k = c + 273.15
    var result: Double
    
    switch(from, to){
    case (.c, .f):
        result = (value * 1.8) + 32
    case (.c, .k):
        result = value + 273.15
    case (.f, .c):
        result = (value - 32) / 1.8
    case (.k, .c):
        result = value - 273.15
    case (.f, .k):
        result = (value + 459.67) / 1.8
    case (.k, .f):
        result = (value * 1.8) - 459.67
    default:
        result = value
    }
    print("Результат = \(result)")
}

convertTemperature(value: 10, from: .k, to: .f)

// Задача №5 Вычисление среднего значения

func average(arrayNumbers: [Int]) -> Int? {
    var sum = 0
    var count = 0
    
    for item in arrayNumbers {
        sum += item
        count += 1
    }
    
    if arrayNumbers.isEmpty {
        return nil
    }
    
    let average2 = sum / count
    return average2
}
let ave = average(arrayNumbers: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
print("Среднее значение массива = \(ave)")

// Задача №2 поиск общих элементов

func commonElements(array1: [Int], array2: [Int]) {
    var arr1Set = Set(array1)
    var arr2Set = Set(array2)
    
    var result = arr1Set.union(arr2Set)

    let res3 = arr1Set.intersection(arr2Set)
    print(result.sorted())
    //array1.append(contentsOf: array2)
}
var res = commonElements(array1: [10, 20, 30, 40, 50, 60], array2: [50, 60, 70, 80, 90, 10, 100])

// Задача №4 Счастливый билет

func isLuckyTicket(ticket: String) {
    var first = ticket.prefix(3)
    var second = ticket.suffix(3)
    
    var sumFirst = first.reduce(0) { $0 + Int(String($1))! }
    var sumSecond = second.reduce(0) { $0 + Int(String($1))! }
    
    if sumFirst == sumSecond {
        print("Ура! Счастливый билет.")
    } else {
        print("Увы, Нужен додеп")
    }
}

isLuckyTicket(ticket: "123321")
