import Foundation

// Задача №1.1 Протокол Describable

///Создайте протокол Describable с требованием свойства description типа String.

///Сделайте структуру Person и класс Car конформирующими этому протоколу.

///Выведите описание для каждого объекта.

print("Задача №1.1")

protocol Describable {
    var description: String { get set }
}

struct Person: Describable {
    var name: String
    var age: Int
    var description: String
}

class Car: Describable {
    var brand: String
    var model: String
    var description: String
    
    init(brand: String, model: String, description: String) {
        self.brand = brand
        self.model = model
        self.description = description
    }
}

let nikson = Person(name: "Nikita", age: 26, description: "Изучаает IOS разработку")
print(nikson.description)
let bmw = Car(brand: "BMW", model: "M2", description: "Спортивная модель")
print(bmw.description)

// Задача №1.2 Протокол Comparable

///Создайте протокол Comparable, который позволяет сравнивать два объекта.
///Реализуйте этот протокол для класса Student, где сравнение происходит по среднему баллу.

print("Задача №1.2")

protocol Comparable {
    func isBigger(than other: Self) -> Bool
    func isSmaller(than other: Self) -> Bool
    func isEqual(to other: Self) -> Bool
}

class Student: Comparable {
    var name: String
    var averageScore: Double
    
    init(name: String, score: Double) {
        self.name = name
        self.averageScore = score
    }
    
    func isBigger(than other: Student) -> Bool {
        return self.averageScore > other.averageScore
    }
    
    func isSmaller(than other: Student) -> Bool {
        return self.averageScore < other.averageScore
    }
    
    func isEqual(to other: Student) -> Bool {
        return self.averageScore == other.averageScore
    }
}

let student1 = Student(name: "Никита", score: 3.7)
let student2 = Student(name: "Алина", score: 4.8)
print(student1.isBigger(than: student2))
print(student1.isSmaller(than: student2))
print(student1.isEqual(to: student2))

//Задача №3 Расширение String
///Создайте расширение для класса String, которое добавляет метод isPalindrome(), проверяющий, является ли строка палиндромом.
print("Задача №3")

extension String {
    func isPalindrome() {
        var reversedStr = ""
        
        for char in self.reversed() {
            reversedStr.append(char)
        }
        
        if self.uppercased() == reversedStr.uppercased() {
            print("Слово \(self) является палиндромом!")
        }
        else {
            print("Слово \(self) не является палиндромом!")
        }
    }
}

let someStr = "Nikita"
let someStr2 = "tot"
someStr.isPalindrome()
someStr2.isPalindrome()

//Задача №4 Протокол Equatable
///Создайте протокол Equatable для структуры Point, чтобы можно было сравнивать две точки.
 print("Задача №4")

protocol Equateble {
    func isEqual(to other: Self) -> Bool
}

struct Point {
    var x: Int
    var y: Int
    
    func isEqual(to other: Point) -> Bool {
        return x == other.x && y == other.y
    }
}

let point1 = Point(x: 1, y: 2)
let point2 = Point(x: 1, y: 2)
print(point1.isEqual(to: point2))

//Задача №5 Расширение Array

///Создайте расширение для массива (Array), которое добавляет метод average(), вычисляющий среднее значение чисел в массиве.
print("Задача №5")

extension Array where Element: Numeric {
    func average() -> Double? {
        guard !self.isEmpty else {
            return nil
        }
        
        let sum = self.reduce(0, +)
        
        if let numerSum = sum as? Double {
            return numerSum / Double(self.count)
        } else if let numerSum = sum as? Int {
            return Double(numerSum) / Double(self.count)
        } else if let numerSum = sum as? Float {
            return Double(numerSum) / Double(self.count)
        }
        
        return nil
    }
}

let testArr = [18, 31, 52]
if let result = testArr.average() {
    print("Среднее значение: \(result)")
} else {
    print("Пустой массив")
}

//Задача №2.1 Протокол Identifiable

///Создайте протокол Identifiable с требованием свойства id типа String.
///Сделайте класс User и структуру Product конформирующими этому протоколу.
print("Задача №2.1")

protocol Identifiable {
    var id: String { get }
}

class User: Identifiable {
    var id: String
    var name: String
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

struct Product: Identifiable {
    var id: String
    var price: Double
}

func printID(_ item: Identifiable) {
    print("ID объекта: \(item.id)")
}

let user1 = User(id: "id221231323123", name: "Никита")
let product1 = Product(id: "id123443423424", price: 123123)

print(product1.id)
print(user1.id)

printID(user1)
printID(product1)

//Задача №2.2 Расширение Int
///Создайте расширение для типа Int, которое добавляет метод isEven(), проверяющий, является ли число четным.
print("Задача №2.2")

extension Int {
    func isEven() -> Bool {
        self % 2 == 0 ? true : false
    }
}

let someNum = 12342353453242

if someNum.isEven() {
    print("Число четное!")
}
else {
    print("Число нечетное!")
}

//Задача №2.3 Протокол CustomStringConvertible
///Реализуйте протокол CustomStringConvertible для класса Book, чтобы при выводе объекта отображалось его название и автор.
print("Задача №2.3")

protocol CustomStringConvertible: AnyObject {
    var description: String { get }
}

class Book: CustomStringConvertible {
    let author: String
    let title: String
    
    init(author: String, title: String) {
        self.author = author
        self.title = title
    }
    
    var description: String {
        """
        Автор: \(author) 
        Книга: \(title)
        """
    }
}

let book1 = Book(author: "Джек Лондон", title: "Мартин Иден")
print(book1.description)

//Задача №2.4 Протокол Delegate

///Создайте простой пример использования делегата:
///Класс Timer вызывает метод делегата, когда таймер заканчивается.
///Класс ViewController реализует протокол делегата и обрабатывает событие.
print("Задача №2.4")

//Задача №2.5 Расширение Dictionary
///Создайте расширение для словаря (Dictionary), которое добавляет метод keysAsString(), возвращающий все ключи как одну строку через запятую.
print("Задача №2.5")

extension Dictionary {
    func keysAsString() -> String {
        let keysArray = self.keys.map { String(describing: $0) }
        
        return keysArray.joined(separator: ", ")
    }
}

let dictOne = ["name" : "Никита", "age" : "26", "city" : "Новосибирск"]
let dictTwo = [1 : "swift", 2 : "dota2", 3 : "cs2", 4 : "sleep"]

print(dictOne.keysAsString())
print(dictTwo.keysAsString())

//Задача №3.1 Протокол Observable

///Создайте протокол Observable, который позволяет объектам уведомлять наблюдателей о своих изменениях.
///Пример: класс Counter увеличивает счетчик, а наблюдатель получает уведомление о новом значении.
print("Задача №3.1")
//Задача №3.2 Расширение Double

///Создайте расширение для типа Double, которое добавляет метод roundToDecimal(places:), округляющий число до указанного количества десятичных знаков.
print("Задача №3.2")
 
extension Double {
    func roundToDecimal(places: Int) -> Double {
        let multiplier = pow(10.0, Double(places))
        return (self * multiplier).rounded() / multiplier

    }
}

let num = 3.14159265
print(num.roundToDecimal(places: 2))

//Задача №3.3 Протокол Codable

///Создайте структуру User с полями name и age, которая конформирует протоколу Codable.
///Напишите код, который преобразует экземпляр User в JSON строку и обратно.
print("Задача №3.3")

struct User3: Codable {
    let name: String
    let age: Int
}

let someUser = User3(name: "Никита", age: 26)

func toJSON(user: User3) -> String? {
    let encoder = JSONEncoder()
    
    do {
        let data = try encoder.encode(user)
        if let jsonString = String(data: data, encoding: .utf8) {
            return jsonString
        }
    } catch {
        print("Ошибка \(error)")
    }
    return nil
}

func fromJSON(jsonStr: String) -> User3? {
    let decoder = JSONDecoder()
    guard let data = jsonStr.data(using: .utf8) else {
        print("Не могу преобразовать ")
        return nil
    }
    
    do {
        let user = try decoder.decode(User3.self, from: data)
        return user
    } catch {
        print("Ошибка \(error)")
    }
    return nil
}


if let jsonStr = toJSON(user: someUser) {
    print(jsonStr)
    print(fromJSON(jsonStr: jsonStr) ?? "Error")
}

//Задача №3.4 Протокол Factory

//Создайте протокол Factory, который содержит метод create() для создания объектов.
//Реализуйте этот протокол для класса CarFactory, который создает автомобили разных марок.
print("Задача №3.4")

protocol Factory {
    func create() -> Car3
}

class Car3 {
    let model: String
    let year: Int
    
    init(model: String, year: Int) {
        self.model = model
        self.year = year
    }
    
    func description() -> String {
        return "\(model) \(year)"
    }
}

class CarFactory: Factory {
    func create() -> Car3 {
        return Car3(model: "BMW", year: 2021)
    }
}

let carFact = CarFactory()
let car = carFact.create()

print(car.description())
//Задача №3.5 Расширение для коллекций

///Создайте расширение для всех коллекций (Collection), которое добавляет метод removeAll(where:), удаляющий элементы, удовлетворяющие условию.
print("Задача №3.5")

extension RangeReplaceableCollection {
    mutating func removeAll(where condition: (Element) -> Bool) {
        self = self.filter { !condition($0) }
    }
}

var numbers = [1, 2, 3, 4, 5, 6, 7]
numbers.removeAll(where: {$0 % 2 == 1})
print(numbers)

//ДОПОЛНИТЕЛЬНЫЕ ЗАДАЧИ
//Задача №1 Протокол PaymentMethod

///Создайте протокол PaymentMethod, который содержит метод process(amount:), обрабатывающий платеж.
///Реализуйте этот протокол для классов CreditCard и PayPal.
print("Задача №1")

protocol PaymentMethod {
    func process(amount: Double)
}

class CreditCard: PaymentMethod {
    let cardNum: String
    
    init(cardNum: String) {
        self.cardNum = cardNum
    }
    
    func process(amount: Double) {
        print("Принят платеж с карты \(cardNum) на сумму \(amount) RUB")
    }
}

class PayPal: PaymentMethod {
    let userName: String
    
    init(userName: String) {
        self.userName = userName
    }
    
    func process(amount: Double) {
        print("Принят платеж PayPal \(userName) на сумму \(amount) RUB")
    }
}

let myAcc = PayPal(userName: "testNikson")
myAcc.process(amount: 12345.0)

//Задача №2 Расширение для URL

///Создайте расширение для типа URL, которое добавляет метод isValid(), проверяющий, является ли URL валидным.
print("Задача №2")

extension URL {
    func isValid() -> Bool {
        if self.scheme != nil && !self.absoluteString.isEmpty {
            true
        } else {
            false
        }
    }
}

let someURL = URL(string: "https://ya.ru")
if let isnoNil = someURL?.isValid() {
    print(isnoNil)
} else {
    print("Error")
}

//Задача №3 Протокол Observer

///Создайте протокол Observer, который позволяет объектам подписываться на события другого объекта.
///Пример: класс WeatherStation оповещает подписчиков об изменении температуры.
print("Задача №3")

protocol Observer: AnyObject {
    func update(message: String)
}

class WeatherObserver: Observer {
    func update(message: String) {
        print("Получено обновление погоды: \(message)")
    }
}

//Задча №4 Расширение для Date

///Создайте расширение для типа Date, которое добавляет метод daysUntil(date:), вычисляющий количество дней до указанной даты.
print("Задача №4")

extension Date {
    func daysUntil(date: Date) -> Int {
        let calendar = Calendar.current
        let dateComponents = calendar.dateComponents([.day], from: self, to: date)
        return dateComponents.day ?? 0
    }
}

let today = Date()
if let untilDay = Calendar.current.date(byAdding: .day, value: 13, to: today) {
    let days = today.daysUntil(date: untilDay)
    print("Дней до даты: \(days)")
}

//Задача №5 Протокол Transformer

///Создайте протокол Transformer, который содержит метод transform(input:), преобразующий входные данные.
///Реализуйте этот протокол для класса TextEncryptor, который шифрует текст.
print("Задача №5")

protocol Transformer {
    associatedtype Input
    associatedtype Output
    
    func transform(_ input: Input) -> Output
}

class TextEncryptor: Transformer {
    typealias Input = String
    typealias Output = String
    
    func transform(_ input: String) -> String {
        let shiftedScalars = input.unicodeScalars.map { scalar -> UnicodeScalar in
            let shiftedValue = scalar.value + 1
            return UnicodeScalar(shiftedValue) ?? scalar
        }
        return String(String.UnicodeScalarView(shiftedScalars))
    }

        }


let someTextToEncode = TextEncryptor()
print(someTextToEncode.transform("DivanKrovat"))

//текст шифруется со смещением на 1 символ
