//: Playground - noun: a place where people can play

import UIKit

//enumeration 

enum enumeration {
    //do something
        //0     1      2
    case zero , one , two
    case tesr
    case okabcd
    
}

var number = enumeration.two


print(number)
print(number.hashValue)

enum Number : Int {
        // 0         1     2
    case zero = 99 , one , two
}


var number2 : Number
number2 = .two




var number1 = Number.one

number1.hashValue
number1.rawValue
number1.hashValue

enum testmethod {
    case one , two , three
    func exec() -> String {
        switch self {
        case .one:
            return "Say Hi"
        case .two:
            return "Say Again"
        case .three:
            return "Hello world"
        }
    }
}

var getData = testmethod.three

getData.exec()



