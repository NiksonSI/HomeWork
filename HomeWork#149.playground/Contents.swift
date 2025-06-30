// Задача №1.1 Вывод чисел от 1 до N

func printNumbers(numberN: Int) {
    
    for numbers in 1...numberN {
        print(numbers)
    }
}
printNumbers(numberN: 7)
printNumbers(numberN: 12)

// Задача №1.2 Сумма чисел от 1 до N

func sumNumbers(numberN: Int) -> Int {
    var sum = 0
    for numbers in 1...numberN {
        sum += numbers
    }
    return sum
}
sumNumbers(numberN: 7)
sumNumbers(numberN: 5)

// Задача №1.3 Факториал числа

func factorial(numberN: Int) -> Int {
    var fac = 1
    for numbers in 1...numberN {
        fac *= numbers
    }
    return fac
}
factorial(numberN: 5)
factorial(numberN: 3)

// Задача №1.4-5 Четные числа / Нечетные числа


for evenNumber in 1...50 {
    if evenNumber % 2 == 0 {
        print(evenNumber)
    }
}

for evenNumber2 in 1...50 {
    if evenNumber2 % 2 != 0 {
        print(evenNumber2)
    }
}

// Задача №2.1 Таблица умножения (Вопрос к форммулировке задания)

for firstIndex in 1...10 {
    for secondIndex in 1...10 {
        print("\(firstIndex) X \(secondIndex) = \(firstIndex * secondIndex)")
    }
}

//for index in 1...10 {
//    print("1 X \(index) = \(1 * index)")
//}

// Задача №2.2 Поиск делителей числа

func findDivisors(numberN: Int) {
     for divisor in 1...numberN {
        if numberN % divisor == 0 {
            print("Делитель числа \(numberN) = \(divisor)")
        }
    }
}
findDivisors(numberN: 40)

// Задача №2.3 Простые числа

//for index in 1...100 {
//    var isPrime = true
//    for divisor in 1..<index {
//        if index % divisor == 0 {
//            isPrime = false
//            break
//        }
//    }
//    if isPrime {
//        print("Простое число: \(index)")
//    }
//}

func primeNumber(number: Int) -> Bool {
    guard number >= 2 else {return false}
    
    for i in 2 ..< number {
        if number % i == 0 {
            return false
        }
    }
    return true
}
//for i  in 2...100 {
//    if i % 1 == 0 && i % i == 0 {
//        print("Простое число:   \(i)")
//    }
//}
primeNumber(number: 11)
// Задача №2.4 Обратный счет

func reverseCount(numberN: Int) {
    for index in stride(from: numberN, through: 1, by: -1) {
        print(index)
    }
}
 reverseCount(numberN: 23)

// Задача №2.5 Сумма цифр числа (Не понял как это сделать -_-)

func sumDigits(numberN: Int) -> Int {
    var sum = 0
    var number = numberN
    while number != 0 {
        let digit = number % 10
        sum += digit
        number /= 10
    }
    print("Сумма цифр равна \(sum)")
    return sum
}
sumDigits(numberN: 123)
sumDigits(numberN: 999)
