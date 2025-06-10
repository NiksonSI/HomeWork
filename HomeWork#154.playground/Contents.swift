// Задача №1.1 Приветствие

func greet(name: String) {
    print("Hello, \(name)!")
}
greet(name: "Nikita")

// Задача №1.2 Сумма двух чисел

func add(a: Int, b: Int) -> Int {
    return a + b
}
print("Сумма чисел равно \(add(a: 10, b: 20))")

// Задача №1.3 Площадь прямоугольника

func rectangleArea(width: Int, height: Int) -> Int {
    return width * height
}
print("Площадь прямоугольника равна \(rectangleArea(width: 10, height: 20))")

// Задача №1.4 Факториал числа

func factorial(fac: Int) -> Int {
    var of = 1
    for fac in 1...fac {
        of *= fac
    }
    return of
}
let res = factorial(fac: 5)
 print("Факториал = \(res)")

// Задача №1.5 Проверка чётночти

func isEven(_ number: Int) -> Bool {
    
    if number % 2 == 0 {
        return true
    } else if number % 2 != 0 {
        return false
    }
    return false
}
isEven(10)
isEven(15)

// Задача № 2.1 Калькулятор

func calculate(number1: Double, number2: Double, action: Character) -> String {
    
    var result = ""
    
    switch action {
    case "+":
        print("Сумма чисел = \(number1 + number2)")
        result = "Сумма чисел = \(number1 + number2)"
    case "-":
        print("Разность чисел = \(number1 - number2)")
        result = "Разностьт чисел = \(number1 - number2)"
    case "*":
        print("Произведение = \(number1 * number2)")
        result = "Произведение = \(number1 * number2)"
    case "/":
        print("Деление = \(number1 / number2)")
        result = "Деление = \(number1 / number2)"
    case "0":
        print("На 0 делить нельзя")
    default:
        print("Ошибка ввода")
    }
    return result
}
calculate(number1: 3, number2: 4, action: "+")
calculate(number1: 3, number2: 4, action: "*")
calculate(number1: 3, number2: 4, action: "/")
calculate(number1: 3, number2: 4, action: "-")
calculate(number1: 12, number2: 23, action: "0")

// Задача №2.2 Поиск максимального числа

func findMaxNumber(numbers: [Int]) -> Int {
    var maxNumber = numbers[0]
    for number in numbers {
        if number > maxNumber {
            maxNumber = number
        }
    }
    return maxNumber
}

let res2 = findMaxNumber(numbers: [43, 56, 78, 23, 45])
print("Максимальное число в массиве = \(res2)")

// Задача №2.3 Генерация таблицы умножения

func multiplicationTable(number: Int) -> String {
    var result = ""
    for i in 1...10 {
        result += "\(number) * \(i) = \(number * i)\n"
    }
    return result
}
let res3 = multiplicationTable(number: 4)
print(res3)

// Задача №2.4 Обработка строк

func reverseString(_ input: String) -> String {
    return String(input.reversed())
}
reverseString("Hello, world!")

// Задача №2.5 Проверка палиндрома

func isPalindrome(_ input: String) -> Bool {
    let lowerCasedInput = input.lowercased()
    let reversedInput = String(lowerCasedInput.reversed())
    return lowerCasedInput == reversedInput
}

isPalindrome("MAMA")
