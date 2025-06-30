// Задача №1

func addAge (age: Int) {
    
    if age >= 18 {
        print("Вы совершеннолетний")
    } else {
        print("Вы несовершеннолетний")
    }
}

addAge(age: 22)
addAge(age: 14)
addAge(age: 18)

//  Задача №2

func addNumbers1 (number: Int) {

        if (number % 2 != 0) {
            print("Нечётное число")
        } else {
            print("Чётное число")
        }
}

addNumbers1(number: 33)
addNumbers1(number: 20)

//Задача №3

func addNumbers2 (number: Int) {
    
    if (number > 0) {
        print("Положительно число")
    } else if (number < 0 ){
        print("Отрицательное число")
    } else {
        print("Число равно нулю")
    }
}

addNumbers2(number: -11)
addNumbers2(number: 0)
addNumbers2(number: 3)

// Задача №4
let monthDic = [1 : "January", 2 : "February", 3 : "March", 4 : "April", 5 : "May", 6 : "June", 7 : "July", 8 : "August", 9 : "September", 10 : "October", 11 : "November", 12 : "December"]

func addMonth (month: Int) {
    
switch month {
case 12, 1...2:
    print("it's winter")
case 3...5:
    print("it's spring")
case 6...8:
    print("it's summer")
case 9...11:
    print("it's fall")
default:
    print("Введите праввильные данные")
}
}

addMonth(month: 4)
addMonth(month: 12)
addMonth(month: 9)
 
// Задача №5

func grade (points: Int) {

    switch points{
    case 0...49: print("Неудовлетварительно")
    case 50...69: print("Удовлетворительно")
    case 70...89: print("Хорошо")
    case 90...100: print("Отлично")
    default:
    print("Введите верное значение")
    }
}

grade(points: 46)
grade(points: 98)
grade(points: 89)

// Задача №2.1 Калькулятор

func calculate(number1: Double, number2: Double, action: Character) -> String {
    
    var result = ""
    
    switch action {
    case "+":
        print("Сумма чисел = \(number1 + number2)")
        result = "Сумма чисел = \(number1 + number2)"
    case "-": print("Разность чисел = \(number1 - number2)")
    case "*": print("Произведение = \(number1 * number2)")
    case "/": print("Деление = \(number1 / number2)")
    default:
        print("Ошибка ввода")
    }
    return result
}
calculate(number1: 3, number2: 4, action: "+")
calculate(number1: 3, number2: 4, action: "*")
calculate(number1: 3, number2: 4, action: "/")
calculate(number1: 3, number2: 4, action: "-")

var sum = calculate(number1: 22, number2: 11, action: "/") //?????

// Задача №2.2 Проверка пароля

let passwordCount = 9
let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
let letters = ["A", "a", "B", "b", "C", "c", "D", "d", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "K", "k", "L", "l", "M", "m", "N", "n", "O", "o", "P", "p", "Q", "q", "R", "r", "S", "s", "T", "t", "U", "u", "V", "v", "W", "w", "X", "x", "Y", "y", "Z", "z"]

func passwordCheck(password: String) -> String {
    
    var result2 = ""
    
    let isNumber = password.contains
    { $0.isNumber }
    let isLetter = password.contains
    { $0.isLetter }
    
    if password.count <= passwordCount && password.contains(isLetter) && password.contains(isNumber){
        print("Надёжный пароль")
        result2 = "Надёжный пароль"
    }
        
    return result2
}
//    var result2 = ""
//    
//    if password.count <= passwordCount && numbers.contains(9) && letters.contains != nil {
//        print("Надёжный пароль")
//        result2 = "Надёжный пароль"
//    } else {
//        print("Слабый пароль")
//        result2 = "Слабый пароль"
//    }
//    return result2
//    }
passwordCheck(password: "Fdsad22112aasfs")
passwordCheck(password: "Sdde32194")
passwordCheck(password: "asd2")
passwordCheck(password: "jdkwi331")

// Задача №2.3 Определение типа треугольника

func triangleAngles(number1: Double, number2: Double, number3: Double) -> String {
    
    var result3 = ""
    
    if number1 == number2 && number2 == number3{
        print("Треугольник равносторонний")
        result3 = "Треугольник равносторонний"
    } else if number1 != number2 && number2 != number3 && number1 != number3{
        print("Треугольник разносторонний")
        result3 = "Треугольник разносторонний"
    } else if number1 == number2 || number1 == number3 || number2 == number3{
        print("Треугольник равнобедренный")
        result3 = "Треугорльник равнобедренный"
    } else if number1 + number2 > number3 || number1 + number3 > number2 || number2 + number3 > number1{ // не работает этот if
        print("Треугоьник существует")
        result3 = "Треугоьник существует"
    }else {
        print("Треугшольник не существует")
    }
    return result3
}

triangleAngles(number1: 90, number2: 45, number3: 45)
triangleAngles(number1: 122, number2: 26, number3: 66)
triangleAngles(number1: 100, number2: 100, number3: 100)
triangleAngles(number1: 60, number2: 60, number3: 60)
triangleAngles(number1: 100, number2: 90, number3: 323)

// Задача №2.4 Световор

func trafficLights(color: String) -> String{
    
    var result4 = ""
    
    switch color {
    case "зелёный":
        print("Идите!")
        result4 = "Идите!"
    case "жёлтый":
        print("Готовьтесь")
        result4 = "Готовьтесь!"
    case "красный":
        print("Стой")
        result4 = "Стой!"
    default:
        print("Неверный цвет")
        result4 = "неверный цвет"
    }
    return result4
}

trafficLights(color: "зелёный")
trafficLights(color: "красный")
trafficLights(color: "жёлтый")
trafficLights(color: "dsdsdsd")


// Задача №2.5 Проверка дня недели

//let dayOfTheWeek = [1 : "Понедельник", 2 : "Вторник", 3 : "Среда", 4 : "Четверг", 5 : "Пятница", 6 : "Суббота", 7 : "Воскресенье"]

func dayOfWeek(dayNumber: Int) {
    
    var result5 = ""
    
    switch dayNumber {
    case 1:
        print("Понедельник - рабочий день")
        
    case 2:
        print("Вторник - рабочий день")
       
    case 3:
        print("Среда - рабочий день")
        
    case 4:
        print("Четверг - рабочий день")
        
    case 5:
        print("Пятница - рабочий день")
        
    case 6:
        print("Суббота - выхрдной день")
        result5 = "Суббота - выхрдной день"
    case 7:
        print("Воскресенье - выхрдной день")
       
    default:
        print("Ошибка ввода!")
    }
        
    }

dayOfWeek(dayNumber: 5)

// Задача №3.1 Классификация чисел


