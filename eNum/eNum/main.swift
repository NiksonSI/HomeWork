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
 
//Дополнительные задачи
//Задача №1 Телефонные номера

///Создайте перечисление PhoneNumberType, которое содержит типы телефонных номеров (мобильный, домашний, рабочий).
///Добавьте ассоциированные значения для номера телефона.
///Напишите функцию, которая форматирует номер в зависимости от типа.

print("Задача №1")

enum PhoneNumberType {
    case mobile(String)
    case home(String)
    case work(String)
}

func formatPhoneNumber(type: PhoneNumberType) -> String {
    switch type {
    case .mobile(let number):
        return "Мобильный: \(number)"
    case .home(let number):
        return "Домашний: \(number)"
    case .work(let number):
        return "Рабочий: \(number)"
    }
}
let myMobile = PhoneNumberType.mobile("+7 923 176-55-50")
let myHome = PhoneNumberType.home("383 123-45-67")
let myWork = PhoneNumberType.work("8800 555-35-35")

// 4. Форматируем и выводим номера
print(formatPhoneNumber(type: myMobile))
print(formatPhoneNumber(type: myHome))
print(formatPhoneNumber(type: myWork))
//Задача №2 Режимы работы приложения

///Создайте перечисление AppMode, которое содержит режимы работы приложения (светлая тема, темная тема, режим экономии энергии).

///Добавьте метод apply(), который имитирует применение режима.
print("Задача №2")

enum AppMode {
    case Light
    case Dark
    case BatterySave

    func apply() -> String {
        switch self {
        case .Light:
            return "Светлая тема"
        case .Dark:
            return "Темная тема"
        case .BatterySave:
            return "Режим экономии энергии"
        }
    }
}

let app1 = AppMode.BatterySave
let app2 = AppMode.Dark
print(app1.apply())
print(app2.apply())

//Задача №3 Карты

///Создайте перечисление CardSuit, которое содержит масти карт (пики, червы, бубны, трефы).
///Создайте перечисление CardRank, которое содержит ранги карт (2–10, валет, дама, король, туз).
///Создайте структуру Card, которая объединяет масть и ранг.
///Напишите функцию, которая генерирует полную колоду карт.
print("Задача №3")

enum CardSuit: String, CaseIterable {
    case spades = "Пики"
    case hearts = "Черви"
    case diamonds = "Буби"
    case clubs = "Крести"
}

enum CardRank: CaseIterable {
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
    
    var description: String {
        switch self {
        case .two:
            return "2"
        case .three: 
            return "3"
        case .four: 
            return "4"
        case .five: 
            return "5"
        case .six: 
            return "6"
        case .seven: 
            return "7"
        case .eight: 
            return "8"
        case .nine: 
            return "9"
        case .ten: 
            return "10"
        case .jack: 
            return "J"
        case .queen:
            return "Q"
        case .king: 
            return "K"
        case .ace: 
            return "A"
        }
    }
}

struct Card {
    let suit: CardSuit
    let rank: CardRank
    
    var description: String {
        return "\(rank.description)  \(suit.rawValue)"
    }
}

func generateDeck() -> [Card] {
    var deck: [Card] = []
    for suit in CardSuit.allCases {
        for rank in CardRank.allCases {
            deck.append(Card(suit: suit, rank: rank))
        }
    }
    return deck
}

let deck = generateDeck()
print("Полная колода карт (\(deck.count) карты): ")
for card in deck {
    print(card.description, terminator: " ")
}

//Задача №4 Команды управления роботом

///Создайте перечисление RobotCommand, которое содержит команды управления роботом (вперед, назад, влево, вправо) с ассоциированными значениями для расстояния или угла поворота.
///Напишите функцию, которая интерпретирует команды и перемещает робота.

print("\nЗадача №4")

enum RobotCommand {
    case forward(distance: Int)
    case backward(distance: Int)
    case turnLeft(angle: Int)
    case turnRight(angle: Int)
}

func robotCommand(_ command: RobotCommand) -> String {
    switch command {
    case .forward(distance: let meters):
        return "Робот проехал \(meters) метров вперед"
    case .backward(distance: let meters):
        return "Робот проехал \(meters) метров назад"
    case .turnLeft(angle: let degrees):
        return "Робот повернулся на \(degrees) градусов влево"
    case .turnRight(angle: let degrees):
        return "Робот повернулся на \(degrees) градусов вправо"
    }
}

var robotPath: [RobotCommand] = []

robotPath.append(RobotCommand.forward(distance: 45))
robotPath.append(RobotCommand.turnLeft(angle: 90))
robotPath.append(RobotCommand.forward(distance: 33))

print(robotCommand(robotPath[0]))
print(robotCommand(robotPath[1]))
print(robotCommand(robotPath[2]))

//Задача №5 Типы событий

///Создайте перечисление EventType, которое содержит типы событий (конференция, семинар, встреча).
///Добавьте ассоциированные значения для даты, времени и места события.
///Напишите функцию, которая форматирует информацию о событии.
print("Задача №5")

enum EventType {
    case meeting(date: Date, time: String, location: String)
    case conference(date: Date, time: String, location: String, speakers: [String])
    case seminar(date: Date, time: String, location: String, topic: String)
}

func processEvent(_ event: EventType) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none
    
    switch event {
    case let .conference(date, time, location, speakers):
        return "Конференция: \(dateFormatter.string(from: date)) - \(time) - \(location)\nСпикеры: \(speakers.joined(separator: ", "))"
    case let .seminar(date, time, location, topic):
        return "Семинар: \(dateFormatter.string(from: date)) - \(time) - \(location)\nТема: \(topic)"
    case let .meeting(date, time, location):
        return "Встреча: \(dateFormatter.string(from: date)) - \(time) - \(location)"
    }
}

let calendar = Calendar.current
let components = DateComponents(year: 2025, month: 07, day: 13)
let date = calendar.date(from: components)!

let meeting = EventType.meeting(date: date, time: "9:00", location: "Google Meet")
print(processEvent(meeting))
