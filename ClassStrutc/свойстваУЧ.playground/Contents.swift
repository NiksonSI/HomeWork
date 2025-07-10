import UIKit

// Свойства хранения

class Person {
    var name: String
    var power: Int
    
    init() {
        name = "Jhon"
        power = 10
    }
}

let jhon = Person()

jhon.name = "Stan"
jhon.name

// Ленивые свойства хоранения

class DataProvider {
    var data: Int
    init() {
        sleep(5)
        data = 2
    }
}

class Client  {
    lazy var dataProvider = DataProvider()
    
}

print("1")
var client = Client()
print("2")
client.dataProvider.data
print("3")

// Вычисляемые свойства

struct Size {
    var length: Int
    var width: Int
}

class Rect {
    var size: Size
    var square: Int {
        get {
            return size.width * size.length
        }
        set(myName) {
            size.length = myName
            size.width = myName
        }
    }
    init() {
        size = Size(length: 15, width: 7)
    }
}

var rect = Rect()
rect.square = 5
rect.square
 
