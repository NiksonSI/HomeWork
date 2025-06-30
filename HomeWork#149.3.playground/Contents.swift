// Задача №3.4 Переворот строки

    func reverseString(input: String) -> String {
        return String(input.reversed())
}

reverseString(input: "Hello World")

// Задача №3.3 Поиск максимального элемента в массиве

let arrayOfInts = [32, 43, 144, 65, 12, 78, 45, 23, 122]

var maxValueInArray = arrayOfInts[0]

for value in arrayOfInts[1...] {
    if value > maxValueInArray {
        maxValueInArray = value
    }
}
print(maxValueInArray)

// Задача №3.1 Числа Фибонача

    func fibonacci(n: Int) -> Int {
    guard n >= 0 else {
        return 0
    }
    
    var a = 0, b = 1
    for _ in 0..<n {
        (a, b) = (b, a + b)
    }
    return a
}

fibonacci(n: 12)

// Задача №3.5 Проверка палиндрома

    func isPalindrome(input: String) -> Bool {
        let lowercased = input.lowercased()
        return String(lowercased.reversed()) == lowercased
        
}

isPalindrome(input: "Radar")

// Задача №3.2 Генерация случайных чисел без повторений



// ДОПОЛНИТЕЛЬНЫЕ ЗАДАЧИ

// Задача №1 Количество простых чисел

    func countPrimes(number: Int) -> Bool {
        guard number >= 2 else {return false}
        
        for i in 2 ..< number {
            if number % i == 0 {
                return false
            }
        }
        return true
    }

countPrimes(number: 17)


// Задача №2 Счастливый билет

var ticket = "123456"

var first = ticket.prefix(3)
var second = ticket.suffix(3)

let sumFirst = first.reduce(0) { $0 + Int(String($1))! }
let sumSecond = second.reduce(0) { $0 + Int(String($1))! }

if sumFirst == sumSecond {
    print("УРА! Счастливый билет")
} else {
    print("Увы, Нужен додеп")
}

// Задача №3 Удаление дубликатов

var arrayA = [1, 2, 2, 3, 4, 4, 5, 6, 7, 8, 8, 9, 9, 10]
var arrayB = [Int]()

for number in arrayA {
    if !arrayB.contains(number) {
        arrayB.append(number)
    }
}

print(arrayB)

// Задача №4 Поиск числа в массиве

var arrayC = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func numberCheck(C: Int)  {
    var arrayC = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    guard arrayC.contains(C) else
    {return print("Число не найдено")}
    
    for (index, value) in arrayC.enumerated() {
        if value == C {
            print("Индекс элемента \(C) в массиве: \(index)")
            break
        }
    }
}

numberCheck(C: 6)
numberCheck(C: 11)
numberCheck(C: 0)
numberCheck(C: 10)
numberCheck(C: 1)

// Задача №5 Максимальная серия чиссел в массиве

var array = [1, 2, 3, 4, 4, 4, 5, 6, 6, 7, 7, 7, 7, 7, 8, 9, 9, 10]

var maxCount = [Int]()

