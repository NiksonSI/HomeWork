//
//  main.swift
//  classStruct
//
//  Created by Nikita on 03.07.2025.
//

import Foundation

struct MyStruct {
    
}

class MyClass {
    
}

class Person {
    let id = Int.random(in: 1...10)
    var name = "Jhon"
    var personClass = "knight"
    var hp = 100
    var mp = 20

    func greating() {
        print("Hello my name is \(name)")
    }
}

struct Weapon {
    var type: String = "Sword"
    var range = 0
}

let trall = Person()
var weapon = Weapon()


trall.name = "Trall"
trall.personClass = "warrior"
print("name of my person is \(trall.name)")

var bow = Weapon()
bow.type = "bow"

class Animal {
    var name: String
    var type: String
    var numberOfLegs: Int
    
    init(animalName: String, animalType: String, animalNumberOfLegs: Int) {
        name = animalName
        type = animalType
        numberOfLegs = animalNumberOfLegs
    }
}

let human = Animal(animalName: "Sid", animalType: "Human", animalNumberOfLegs: 2)
print(human.name)


var sword = Weapon()
var axe = sword
axe.type = "axe"

sword.type
axe.type
 
let tiger = Animal(animalName: "Sharchan", animalType: "tiger", animalNumberOfLegs: 4)
let sparrow = tiger
sparrow.type = "sparrow"

tiger.type
sparrow.type

// === !==
if tiger === sparrow {
    print("Две переменные ссылаются на один экземпляр")
}

struct A: Equatable {
    static func == (lhs: A, rhs: A) -> Bool {
        return lhs.a == rhs.a
    }
    var a: Int
    var b: Int
}

let one = A(a: 1, b: 2)
let two = A(a: 2, b: 2)

one == two
print(one == two)

// Задача №1.1 / 1.3 Создание простой структуры / Методы и структуры

struct Person1 {
    var name: String = "Nikson"
    var age: Int = 26
    
    func greet() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}

let somePerson = Person1()
print("Имя: \(somePerson.name). Возраст: \(somePerson.age) лет")

let somePerson1 = Person1()
somePerson1.greet()

// Задача №1.2 / 1.4 / 1.5 Создание простого класса / Методы в классе / Инициализатор

class Car {
    var brand = "BMW"
    var model = "X5"
    var year = 2021
    
    func startEngine() {
        print("The \(brand) \(model) engine has started")
    }
    
    init(carBrand: String, carModel: String, carYear: Int) {
        brand = carBrand
        model = carModel
        year = carYear
    }
}


let someCar = Car(carBrand: "Chevrolet", carModel: "Camaro", carYear: 2020)
print("Это \(someCar.brand) \(someCar.model) \(someCar.year) года выпуска")

let someCar1 = Car(carBrand: "ИЖ", carModel: "412", carYear: 1967)
someCar1.startEngine()

// Задача №2.1 Различия между классами и структурами

///Создайте структуру Point с координатами x и y.

///Создайте два экземпляра структуры и измените одно из свойств одного экземпляра. Проверьте, изменился ли другой экземпляр.

///Повторите то же самое для класса. Объясните разницу между поведением структуры и класса.
///Объяснение написать комментарием в коде

print("Задача №2.1")

struct PointS {
    var x: Int
    var y: Int
}

var someX1 = PointS(x: 3, y: 5)
var someY1 = someX1
someX1.x = 7
print("someX1.x = \(someX1.x)", "sommeY1.x = \(someY1.x)")

class PointC {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

var someX2 = PointC(x: 3, y: 5)
var someY2 = someX2
someX2.x = 9
print("someX2.x = \(someX2.x)", "someY2.x = \(someY2.x)")

// Значение переменной x в экземпляре Class становится одинаковым, потому что мы присваиваем ему не новое значение переменной (someX2.x = 9) мы передаем ему ссылку на это значение. Тогда как в Структуре наоборот, мы присваеваем конкретномй переменной в экземляре стрнуктуры значение и оно закрепленно только за переменной в этом экземпляре, если грубо говорить.
// В классе перемменные ссылаются на один экземпляр, в данном случае.

// Задача №2.2 Вычисляемые свойства

///Добавьте к структуре Person вычисляемое свойство isAdult, которое возвращает true, если возраст больше или равен 18, и false в противном случае.

print("Задача №2.2")

struct Person2 {
    var name: String
    var age: Int
    var isAdult: Bool {
        if age >= 18 {
            return true
        } else {
            return false
        }
    }
}

var isAge = Person2(name: "Nikson", age: 26)
print("Nikson совершенно летний?: \(isAge.isAdult)")

// Задача №2.3 Свойства только для чтения

///Добавьте к классу Car свойство только для чтения description, которое возвращает строку в формате: "This is a [марка] [модель] from [год].".
print("Задача №2.3")

class Car2 {
    var brand: String
    var model: String
    var year: Int
    var description: String {
        //return "This is a \(brand) \(model) from \(year)"
        get {
            return "This is a \(brand) \(model) from \(year)"
        }

    }
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
}

var someCar2 = Car2(brand: "BMW", model: "X5", year: 2018)
someCar2.description
print(someCar2.description)

// Задача №2.4 Наследование

///Создайте базовый класс Vehicle с общими свойствами (brand, model, year) и методом drive(), который выводит сообщение: "Driving the [марка] [модель]."

///Создайте подкласс Car, который добавляет свойство numberOfDoors и переопределяет метод drive() для вывода дополнительной информации о количестве дверей.
print("Задача №2.4")
class Vehicle {
    var brand: String
    var model: String
    var year: Int
    
    func drive() {
        print("Drive the \(brand) \(model)")
    }
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
}

    class Car3: Vehicle {
        var numberOfDoors: Int
        
        init(brand: String, model: String, year: Int, numberOfDoors: Int ) {
            self.numberOfDoors = numberOfDoors
            super.init(brand: brand, model: model, year: year)
            //super.init(brand: "Почему", model: "ты тут находишься", year: 2021)
        }
        
        override func drive() {
            print("The \(brand) \(model) has \(numberOfDoors) doors")
        }
    }

var someCar3 = Car3(brand: "BMW", model: "M3", year: 2020, numberOfDoors: 5)
someCar3.drive()

// Задача №2.5 Протоколы *

///Создайте протокол Describable с требованием свойства description типа String.

///Сделайте структуру Person и класс Car конформирующими этому протоколу.
print("Задача №2.5")

protocol Describable {
    var description: String { get set }
}

struct Person4: Describable {
    var description: String
    var name: String
}

class Car4: Describable {
    var description: String
    var brand: String
    
    init(description: String, brand: String) {
        self.description = description
        self.brand = brand
    }
}
var somePerson4 = Person4(description: "asdasdsad", name: "dsadsad")
print(somePerson4.description)

// Задача №3.1 Композиция

///Создайте класс Address с свойствами street, city, zipCode.

///Создайте класс Person, который содержит свойства name, age и address (экземпляр класса Address).

///Создайте экземпляр класса Person и выведите полную информацию о человеке, включая адрес.

print("Задача 3.1")
class Address {
    var street: String
    var city: String
    var zipCode: Int
    
    init(street: String, city: String, zipCode: Int) {
        self.street = street
        self.city = city
        self.zipCode = zipCode
    }
}

class Person5 {
    var name: String
    var age: Int
    var address: Address
    
    init(name: String, age: Int, address: Address) {
        self.name = name
        self.age = age
        self.address = address
    }
    
    func showInfo() {
        print("\(name) \(age) \(address.city) \(address.street) \(address.zipCode)")
    }
}
let myAddress = Address(street: "Ulica2", city: "Gorod2", zipCode: 2341645)
let somePerson5 = Person5(name: "Nikita", age: 26, address: .init(street: "Ulica", city: "gorod", zipCode: 123456))
let somePerson6 = Person5(name: "Gleb", age: 23, address: Address(street: "", city: "", zipCode: 12))
let somePerson7 = Person5(name: "name", age: 11, address: myAddress)
somePerson7.age = 25
somePerson7.showInfo()



// Задача №3.2 Статические свойства и методы

///Добавьте к классу Car статическое свойство totalCars, которое отслеживает общее количество созданных экземпляров класса.

///Добавьте статический метод printTotalCars(), который выводит текущее значение totalCars.

print("Задача №3.2")

class Car5 {
    var brand: String
    var model: String
    var year: Int
    static var totalCars: Int = 0
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
        Car5.totalCars += 1
        }
    
       static func printTotalCars() {
            print("Колличество Cars = \(Car5.totalCars)")
    }
}

let someCar5 = Car5(brand: "Dodge", model: "Viper", year: 2023)
let someCar6 = Car5(brand: "BMW", model: "X5", year: 2021)
let someCar7 = Car5(brand: "sadasd", model: "adsdad", year: 1221)
Car5.printTotalCars()

// Задача №3.3 Кастомный инициализатор

///Создайте структуру Rectangle с свойствами width и height.

///Добавьте инициализатор, который принимает только площадь прямоугольника и вычисляет ширину и высоту, предполагая, что они равны.

print("Задача №3.3")

struct Rectangle {
    var width: Double
    var height: Double

    init(square: Double) {
        let side = square.squareRoot()
        self.width = side
        self.height = side
    }
    
    func showSide() -> String {
        return "Стороны прямоугольника width и height равны: \(width) и \(height) соответственно."
    }
}
let rec = Rectangle(square: 25)
print(rec.showSide())

// Задача №3.4 Копирование объектов

///Создайте класс Book с свойствами title и author.

///Создайте метод copy(), который создает новый экземпляр класса с такими же свойствами.

print("Задача №3.4")

class Book {
    var title: String
    var author: String
    
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
    
    func copy() -> Book {
       Book(title: self.title, author: self.author)
    }
}

let book = Book(title: "Мартин Иден", author: "Джек Лондон")
let copy = book.copy()
print(book.author)
print(copy.title)

// Задача №3.5 Сравнение объектов

///Создайте структуру Point с свойствами x и y.

///Реализуйте метод isEqual(to:), который сравнивает две точки и возвращает true, если их координаты совпадают.

print("Задача №3.5")

struct Point {
    var x: Double
    var y: Double
            
}
// Пока не придумал решение
