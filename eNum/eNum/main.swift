//
//  main.swift
//  eNum
//
//  Created by Nikita on 30.06.2025.
//

import Foundation

let result = "failur"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failuer
}

var result4 = Result.failuer

result4 = .success

let result5: Result

result5 = .success




enum Activity {
    case dancing
    case running(dectination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let currentActivity = Activity.dancing

switch currentActivity{
case .dancing:
    print("Dance")
case .running:
    print("Run")
case .singing:
    print("Song")
case .talking:
    print("Talk")
}

let talking = Activity.talking(topic: "Football")

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)

enum Phone: String {
    case Apple //= "iPhoe 8"
    case Samsung //= "Galaxy S10"
    case Google //= "Pixel 2"
}

var myPhone  = Phone.Apple

print(myPhone)
print(myPhone.rawValue)

// Задача №1.1 Дни недели

enum Weekday: String {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

func sayWeeekday(Day: Weekday) {
    print("It's \(Day.rawValue)")
//    switch Day {
//    case .Monday:
//        print("It's Monday")
//    case .Tuesday:
//        print("It's Tuesday")
//    case .Wednesday:
//        print("It's Wednesday")
//    case .Thursday:
//        print("It's Thursday")
//    case .Friday:
//        print("It's Friday")
//    case .Saturday:
//        print("It's Saturday")
//    case .Sunday:
//        print("It'a Sunday")
//    default:
//        print("error!")
//    }
        
}

sayWeeekday(Day: .Friday)
sayWeeekday(Day: .Tuesday)

// Задача №1.2 Сезоны года

enum Season: String {
    case зима
    case весна
    case лето
    case осень
    
    
    func description() -> String {
        switch self {
        case .зима:
            return "Холодная погода"
        case .весна:
            return "Солнечная погода"
        case .лето:
           return "Жаркая погода"
        case .осень:
            return "Дождливая погода"
        default:
            return "Попробуйте ешё раз!"
        }
    }
}
let season = Season.зима
print(season.description())

// Задача №1.3 Цвета светофора

var count = 0

enum TrafficLight {
    case green
    case yellow
    case red
    
    mutating func next() {
        switch self {
        case .green:
            self = .yellow
        case .yellow:
            self = .red
        case .red:
            self = .green
        }
    }
}

var nextLight = TrafficLight.yellow
nextLight.next()
print(nextLight)

// Задача №1.4 Типы треугольника

enum TriangleType: String{
    case equilateral = "Равносторорнний"
    case isosceles = "Равнобедренный"
    case versatile = "Разносторонний"
}

func sideLength(a: Int, b: Int, c: Int) -> TriangleType {
    
    if a == b && b == c {
        return .equilateral
    } else if a == b || b == c || a == c {
        return .isosceles
    } else {
        return .versatile
    }
}

let resultT = sideLength(a: 12, b: 12, c: 12)
print("Треугольник - \(resultT.rawValue)")

// Задача №1.5 Направление компаса

enum CompassDirection {
    case north
    case south
    case east
    case west
    
    mutating func opposite() {
        switch self {
        case .north:
            self = .south
        case .south:
            self = .north
        case .east:
            self = .west
        case .west:
            self = .east
        }
    }
}
var oppositeDirection = CompassDirection.west
oppositeDirection.opposite()
print(oppositeDirection)

// Задача №2.1 Перечисления с raw значениями

enum Month: Int {
    case January = 1
    case February = 2
    case March = 3
    case April = 4
    case May = 5
    case June = 6
    case Jule = 7
    case August = 8
    case September = 9
    case October = 10
    case November = 11
    case December = 12
}

func monthNumber(number: Int) -> Month? {
    return Month(rawValue: number)
}
print(monthNumber(number: 5)!)

// Задача №2.2 HTTP методы

enum HTTPMethod: String {
    case GET
    case POST
    case PUT
    case DELETE
    
    var descridescriptionptio: String {
        switch self {
        case .GET:
            return "Получить"
        case .POST:
            return "Опубликовать"
        case .PUT:
            return "Поставить"
        case .DELETE:
            return "Удалить"
        }
    }

}

var method = HTTPMethod.POST
print(method.descridescriptionptio)

// Задача №2.3 Координаты точек

enum Point {
    case coordinate(x: Double, y: Double)
}

// Задача №2.4 Типы ошибок

enum ErrorType {
    case invalidInput
    case fileNotFound
    case networkError
    
    func massage() -> String {
        switch self {
        case .fileNotFound:
            return "Sorry - fileNotFound"
        case .invalidInput:
            return "Sorry - invalidInput"
        case .networkError:
            return "Sorry - networkError"
        }
    }
}

let messageType = ErrorType.fileNotFound
print(messageType.massage())

// Задача №2.5 Типы данных

enum DataType {
    case data1(Int, Int, Int)
    case data2(String)
    case data3(Bool)
}

var numbers = DataType.data1(12, 12, 12)
var letters = DataType.data2("Hello")
var check = DataType.data3(true)

// Задача №3.1 Выражения арифметических операций

enum Operation {
    case add(number1: Double, number2: Double)
    case subtract(number1: Double, number2: Double)
    case multiply(number1: Double, number2: Double)
    case divide(number1: Double, number2: Double)
}

func calculate(_ operations: Operation) -> Double? {
    var resultC = Double()
    
    switch operations {
    case let .add(number1: x, number2: y):
        resultC = x + y
        return resultC
    case let .subtract(number1: x, number2: y):
        resultC = x - y
        return resultC
    case let .multiply(number1: x, number2: y):
        resultC = x * y
        return resultC
    case let .divide(number1: x, number2: y):
        if y != 0 {
            resultC = x / y
            return resultC
        } else {
            print("Делить на 0 нельзя!")
        }
    }
    
    return resultC
}

let operastionCalculate = Operation.multiply(number1: 15, number2: 3)
let resultOfCalculate = calculate(operastionCalculate)
print("Результат выражения = \(resultOfCalculate!)")

//Задача №3.2 Фигуры

enum Shape {
    case circle(radius: Double)
    case rectangle(sideA: Double, sideB: Double)
    case triangle(sideA: Double, sideB: Double, sideC: Double)

    func area() -> Double  {
        
        switch self {
        case let .circle(radius: r):
            let pi = 3.14
            return pi * pow(r, 2)
        case let .rectangle(sideA: a, sideB: b):
            return a * b
        case let .triangle(sideA: a, sideB: b, sideC: c):
            let P = a + b + c
            let p = P / 2
            return sqrt(p * (p - a) * (p - b) * (p - c))
        }
    }
}

let areaShape = Shape.triangle(sideA: 12, sideB: 11, sideC: 5)
print("Площадь фигуры = \(areaShape.area())")

// Задача №3.3 Монеты

enum Coin: Int {
    case coin1 = 1
    case coin2 = 2
    case coin3 = 5
    case coin4 = 10
}

func piggy(coinArray: [Coin]) -> Int {
    var sum = 0
    for item in coinArray {
        sum += item.rawValue
    }
    return sum
}

let sumPiggy = piggy(coinArray: [.coin4, .coin3, .coin2, .coin1])
print("Сумма монет = \(sumPiggy)")

// Задача №3.4 Статус заказов

enum OrderStatus {
    case new
    case processed
    case shipped
    case delivered
    
    func canCancle() -> String {
        
        switch self {
        case .new, .processed:
            return "Можно отменить"
        case .shipped, .delivered:
            return "Нельзя отменить"
        }
    }
}
let canCancleOrder = OrderStatus.delivered
print("Статус заказа: \(canCancleOrder.canCancle())")

// Задача №3.5 Калькулятор с перечислением

//enum CalculateAction {
//    case add(numberA: Double, numberB: Double)
//    case subtruct(numberA: Double, numberB: Double)
//    case multiply(numberA: Double, numberB: Double)
//    case divide(numberA: Double, numberB: Double)
//}

//
 
