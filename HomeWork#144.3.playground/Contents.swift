import UIKit

// ЗАдача №3.5 Определение високосного года
 
func isLeapYear(year: Int) {
    
    if year % 400 == 0 || (year % 100 != 0 && year % 4 == 0) {
        print("Високосный год")
    } else {
        print("Обычный год")
    }
}

isLeapYear(year: 2121)
isLeapYear(year: 1999)
isLeapYear(year: 2016)
isLeapYear(year: 1111)

// Задача №3.3 Кассовый аппарат

func cashRegister(prise: Double, card: Double) {
    let change = card - prise
    if change == 0 {
        print("Спасибо за покупку")
    } else if change > 0 {
        print("сдача = \(change)")
    } else if change < 0 {
        print("Недорстаточно средств")
    }
}

cashRegister(prise: 100, card: 100)
cashRegister(prise: 100, card: 11)
cashRegister(prise: 100, card: 111)

// Задача №3.2 Угадай число

func guessNumber(number: Int) -> String {
    var result3 = ""
    let randomNumber = Int.random(in: 1...10)
    
    if number < randomNumber {
        print("Загаданное число - Меньше")
        result3 = "Загаданное число - Меньше, рандомное число = \(randomNumber)"
    } else if number > randomNumber {
        print("Меньше")
        result3 = "Меньше"
    } else if number == randomNumber  {
        print("Вы угадали!")
        result3 = "Вы угадали!"
    } else {
        print("Что-то пошло не так")
        result3 = "Что-то пошло не так"
    }
    return result3
}

let xchto = guessNumber(number: 1)
print(xchto)
//guessNumber(number: 2)
//guessNumber(number: 3)
//guessNumber(number: 4)
//guessNumber(number: 5)
//guessNumber(number: 6)
//guessNumber(number: 7)
//guessNumber(number: 8)
//guessNumber(number: 9)
//guessNumber(number: 10)
//guessNumber(number: 11)

// Задача №3.1 Классификация чисел

func classifyNumber(number: Int) -> String {

    
    var isPositive = ""
    var evenOdd = ""
    var isPrime = ""
    var resNumb = isPositive + evenOdd + isPrime
    
    guard number > 1 else
    {return resNumb}
    if number > 0 {
        isPositive = "Положительное"
    } else {
        isPositive = "Отрицательное"
    }
    if number % 2 == 0 {
        evenOdd = "Чётное"
    } else {
        evenOdd = "Нечётное"
    }
    for number in 1...number {
        if number % 1 == 0 && number % number == 0 {
            isPrime = " Простое"
        } else {
            isPrime = "Составное"
        }
    }
    return isPositive + isPrime + " " + evenOdd
//    if number > 0 && number % 2 == 0 && number % number != 1 && number == 1 {
//        print("Число \(number) положитьельное, чётное, простое")
//    }
}

let choo = classifyNumber(number: 7)
print("Указанное число - \(choo)")
// Задача №3.4 Определение знака зодиака

func zodiacSign(day: Int, month: String) -> String {
    
    var result = ""
    
    switch (day, month) {
    case (21...31, "Март"), (1...20, "Апрель"):
        print("Ваш ЗЗ - Овен")
        result = "Ваш ЗЗ - Овен"
    case (21...30, "Апрель"), (1...21, "Май"):
        print("Ваш ЗЗ - Телец")
        result = "Ваш ЗЗ - Телец"
    case (22...31, "Май"), (1...21, "Июнь"):
        print("Ваш ЗЗ - Близнецы")
        result = "Ваш ЗЗ - Близнецы"
    case (22...30, "Июнь"), (1...22, "Июль"):
        print("Ваш ЗЗ - Рак")
        result = "Ваш ЗЗ - Рак"
    case (23...31, "Июль"), (1...21, "Август"):
        print("Ваш ЗЗ - Лев")
        result = "Ваш ЗЗ - Рак"
    case (22...31, "Август"), (1...23, "Сентябрь"):
        print("Ваш ЗЗ - Дева")
        result = "Ваш ЗЗ - Дева"
    case (24...30, "Сентябрб"), (1...23, "Октябрь"):
        print("Ваш ЗЗ - Весы")
        result = "Ваш ЗЗ - Весы"
    case (24...31, "Октябрь"), (1...22, "Ноябрь"):
        print("Ваш ЗЗ - Скорпион")
        result = "Ваш ЗЗ - Скорпион"
    case (23...30, "Ноябрь"), (1...22, "Декабрь"):
        print("Ваш ЗЗ - Стрелец")
        result = "Ваш ЗЗ - Стрелец"
    case (23...31, "Декабрь"), (1...20, "Январь"):
        print("Ваш ЗЗ - Козерог")
        result = "Ваш ЗЗ - Козерог"
    case (21...31, "Январь"), (1...19, "Февраль"):
        print("Ваш ЗЗ - Водолей")
        result = "Ваш ЗЗ - Водолей"
    case(20...28, "Февраль"), (1...20, "Март"):
        print("Ваш ЗЗ - Рыбы")
        result = "Ваш ЗЗ - Рыбы"
    default: print("Error!")
    }
    return result
}

zodiacSign(day: 15, month: "Апрель")
zodiacSign(day: 20, month: "Февраль")

// ДОПОЛНИТЕЛЬНРЫЕ ЗАДАЧИ

// Задача №1 Классификация треугольника по углам

func classifyTriangle(a: Double, b: Double, c: Double) -> String {
        let sumT = a + b + c
        var result5 = ""
    
    if a < 90 && b < 90 && c < 90 && sumT == 180 {
        print("Треугольник Остроугольный")
        result5 = "Треугольник Остроугольный"
    } else if a == 90 || b == 90 || c == 90 && sumT == 180 {
        print("Треугольник Прямоугольный")
        result5 = "Треугольник Прямоугольный"
    } else if a > 90 || b > 90 || c > 90 && sumT == 180 {
        print("Треугольник Тупоугольный")
        result5 = "Треугольник Тупоугольный"
    } else {
        print("Треугольника не существует")
    }
    return result5
}

classifyTriangle(a: 90, b: 45, c: 45)
classifyTriangle(a: 60, b: 60, c: 60)
classifyTriangle(a: 45, b: 90, c: 45)
classifyTriangle(a: 10, b: 20, c: 30)
classifyTriangle(a: 100, b: 40, c: 40)

// Задача №2 Определение дня недели по дате
    
//let days = [1: "Понедельник", 2: "Вторник", 3: "Среда", 4: "Четверг", 5: "Пятница", 6: "Суббота", 7: "Воскресенье"]
//let month = [1: "январь", 2: "февраль", 3: "март", 4: "апрель", 5: "май", 6: "июнь", 7: "июль", 8: "август", 9: "сентябрь", 10: "октябрь", 11: "ноябрь", 12: "декабрь"]
//
//    func dayOfWeek(day: Int, month: Int, year: Int) -> String {
//    
//}


func dayOfTheWeek(day: Int, month: Int, year: Int) -> String {
    
    let date = Date()
    let calendar = Calendar.current
    var dateComponents = DateComponents()
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
    
    if let date = calendar.date(from: dateComponents){
        let weekday = calendar.component(.weekday, from: date)
        switch weekday {
        case 1:
            return "Воскресенье"
        case 2:
            return "Понедельник"
        case 3:
            return "Вторник"
        case 4:
            return "Среда"
        case 5:
            return "Четверг"
        case 6:
            return "Пятница"
        case 7:
            return "Суббота"
        default:
            return "????"
        }
    }
        else {
          return "Ошибка ввода"
        }
    }

let dayName = dayOfTheWeek(day: 3, month: 4, year: 2025)
print("Сегодня - \(dayName)")

// Задача №5 Конвертор валют
enum Money {
    case rub
    case usd
    case eur
}

func convertCurrency(value: Double, from: Money, to: Money) {
    var rub = 1.0
    var usd = 73.5 * rub
    var eur = 91.7 * rub
    var result: Double
    switch (from, to) {
        case (.rub, .usd):
            result = value / usd
        case (.rub, .eur):
            result = value / eur
        case (.usd, .rub):
            result = value * usd
        case (.eur, .rub):
            result = value * eur
        case (.usd, .eur):
            result = (value * usd) / eur
        case (.eur, .usd):
            result = (value * eur) / usd
        default:
            result = value
        }

        print("Результат: \(result)")
    }
    
let res = convertCurrency(value: 780, from: .rub, to: .usd)

//convertCurrency(value: <#T##Double#>, from: <#T##String#>, to: <#T##String#>)

// Задача №3 Проверка палиндрома

func isPalindrome(input: String) -> Bool {
    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased
}

let pali = isPalindrome(input: "Radar")
print("Строка \(pali) - полиндром")

// Задача №4 Определение максимального числа

func numberThree(a: Int, b: Int, c: Int) -> Int {
    
    if a >= b  && a  >= c {
        return a
    } else if b >= a && b >= c {
        return b
    } else {
        return c
    }
}

let maxNumber = numberThree(a: 23, b: 111, c: 17)
print("Максимальное число = \(maxNumber)")
