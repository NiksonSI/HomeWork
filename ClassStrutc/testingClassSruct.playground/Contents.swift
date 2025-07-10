import UIKit

struct PointS {
    var x = 3
    var y = 5
}

var someX1 = PointS()
var someY1 = PointS()
someX1.x = 7
someY1.x

print(someX1, someY1)
print("\(someX1.x), \(someY1.x)")

class PointC {
    var x = 3
    var y = 5
}

var someX2 = PointC()
var someY2 = PointC()
someX2.x = 9
someY2.x

print(someX2, someY2)
print("\(someX2.x), \(someY2.x)")
