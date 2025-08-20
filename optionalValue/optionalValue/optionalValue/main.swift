import Foundation

//Задача №1.1 Простая распаковка

///Создайте опциональную переменную optionalNumber: Int? и присвойте ей значение 5.
///Используя if let, выведите значение, если оно существует.
print("Задача №1.1")

let optionalName: String? = nil

let nameToPrint = optionalName ?? "Anonymous"
print(nameToPrint)

//Задача №1.2 Проверка существования

///Создайте опциональную переменную optionalBool: Bool? и присвойте ей значение true.
///Проверьте, существует ли значение, и выведите его.
print("Задача №1.2")

var optionalBool: Bool?
optionalBool = true
if let boolNum = optionalBool {
    print(boolNum)
} else {
    print("обнаружен nil")
}

//Задача №1.3 Сложение опционалов

///Создайте две опциональные переменные a: Int? и b: Int?. Присвойте им значения 3 и nil.
///Если оба значения существуют, сложите их и выведите результат.
print("Задача №1.3")

let a: Int? = 3
let b: Int? = nil

if let aNum = a, let bNum = b {
    print(aNum + bNum)
} else {
    print("обнаружен nil")
}

//Задача №1.4 Безопасная распаковка массива

///Создайте массив [Int?] с элементами [1, nil, 3].
///Используя if let, проверьте каждый элемент и выведите только не-nil значения.
print("Задача №1.4")

let numbers: [Int?] = [1, nil, 3, 4, 5, nil, 1, nil, 7]

for num in numbers {
    if let value = num {
        print(value)
    }
}

//Задача №2.1 Цепочка опционалов

///Создайте структуру Person с опциональным свойством address: String?.
///Создайте экземпляр Person и используйте цепочку (?.) для безопасного доступа к адресу.
print("Задача №2.1")

struct Person {
    let name: String
    var age: Int
    var address: String?
}

let somePerson: Person? = Person(name: "Никита", age: 26)
let address = somePerson?.address
if let newAdd = address {
    print(newAdd)
} else {
    print("Адрес не найден")
}

//Задача №2.2 Распаковка нескольких опционалов

///Создайте три опциональные переменные x: Int?, y: Int? и z: Int?.
///Если все три значения существуют, вычислите их сумму.
print("Задача №2.2")

let x: Int? = 3
let y: Int? = 7
let z: Int? = nil

if let xNum = x, let yNum = y, let zNum = z {
    print(xNum + yNum + zNum)
} else {
    print("Nil")
}

//Задача №2.3 Обработка ошибок с опционалами

///Создайте функцию, которая принимает строку и возвращает число (Int?), если строка содержит цифры.
///Используйте if let для обработки результата.
print("Задача №2.3")

func nilDetector(_ str: String) -> Int? {
    var counter = 0
    for char in str {
        if char.isNumber {
            counter += 1
        }
    }
    return counter != 0 ? counter : nil
}

if let result = nilDetector("какойто21212текст34") {
    print("Строка содержит \(result) цифр")
} else {
    print("Строка не содержит цифр")
}

//Задача №2.4 Фильтрация массива опционалов

///Создайте массив [Int?] с элементами [1, nil, 3, nil, 5].
///Используя метод .compactMap, удалите все nil значения из массива.
print("Задача №2.4")

let someArr: [Int?] = [1, nil, 3, nil, 5]
let newArr = someArr.compactMap { $0 }
print(newArr)

//Задача №2.5 Опциональные аргументы функции
///Создайте функцию, которая принимает опциональный параметр name: String? и выводит приветствие, если имя существует.
print("Задача №2.5")

func optionalGreet(_ name: String?) -> String {
    guard let name = name else {
        return "тут Nil!"
    }
    return "Привет, \(name)!"
}

let myName: String = "Никита"
let unknownName: String? = nil

print(optionalGreet(myName))
print(optionalGreet(unknownName))

//Задача №3.1 Вложенные опционалы

///Создайте вложенное опциональное значение nestedOptional: Int?? и присвойте ему значение 5??.
///Распакуйте его и выведите результат.
print("Задача №3.1")

var nestedOprional: Int?? = 5

if let unwrapOne = nestedOprional {
    if let unwrapTwo = unwrapOne {
        print("Значение вложенного опционала: \(unwrapTwo)")
    }
}

//Задча №3.2 Генерация случайных опционалов

///Создайте функцию, которая генерирует случайное число от 1 до 10 и возвращает его как опционал (Int?).
///В 50% случаев функция должна возвращать nil.
print("Задача №3.2")

func randomOptional() -> Int? {
    let num = Int.random(in: 1...10)
    if num % 2 == 0 {
        return num
    } else {
        return nil
    }
}

var random1: Int? = randomOptional()
var random2: Int? = randomOptional()
var random3: Int? = randomOptional()
var random4: Int? = randomOptional()

print(random1 as Any)
print(random2 as Any)
print(random3 as Any)
print(random4 as Any)

//Задача №3.3 Обработка JSON данных

///Создайте словарь json: [String: Any]? с данными о пользователе (имя, возраст).
///Используя опциональные конструкции, безопасно достаньте и выведите данные.
print("Задача №3.3")

let json: [String: Any]? = ["name": "Никита", "age": 26]

if let dictionary = json {
    if let name = dictionary["name"] as? String {
        print("Имя: \(name)")
    } else {
        print("Имя не указано")
    }
    if let age = dictionary["age"] as? Int {
        print("Возраст: \(age)")
    } else {
        print("Возраст не указан")
    }
} else {
    print("Словарь отсутствует")
}

//Задача №3.4 Цепочка вызовов

///Создайте класс User с опциональным свойством email: String?.
///Создайте экземпляр User и используйте цепочку (?.) для безопасного доступа к email.
print("Задача №3.4")

class User {
    let name: String
    var email: String?
    
    init(name: String) {
        self.name = name
    }
}

let someUser: User? = User(name: "Никита")
var email = someUser?.email
email = "nikita.sin@gmail.com"
if let hisEmail = email{
    print(hisEmail)
} else {
    print("Адрес эле. почты не задан")
}

//Задача №3.5 Обработка коллекций опционалов

///Создайте массив опциональных строк [String?] и используйте .compactMap для преобразования их в массив чисел ([Int]), если строки содержат цифры.
print("Задача №3.5")

let massOptStrings: [String?] = ["246", nil, "swift", "454", nil, nil, "Кино21"]
let mappedIntMass = massOptStrings.compactMap { $0.flatMap { Int($0) } }
print(mappedIntMass)
