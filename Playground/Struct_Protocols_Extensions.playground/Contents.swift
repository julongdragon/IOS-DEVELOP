//extensions , struct , protocols , Generics
//Struct -> Passed by value
//Class  -> Passed by reference

import UIKit
import Foundation



//Extensions ?

var myname : String  = "Lhong"

let myArray = Array(myname.characters)
myArray[2]
myname.uppercased()

extension String {
    var GetSaymyname : String {
        return "My name is " + self
    }
    func sayMyname() -> String {
        return "My name is " + self
    }
}

myname.GetSaymyname

myname.sayMyname()
//
//
//
extension Int {
    var Hex : String {
        var temp = self //79
        var result : String = ""
        let hex_16 = Array("0123456789ABCDEF".characters)
        
        while(temp > 0){
            print("temp start :",temp)
            result = String(hex_16[Int(temp & 0x0F)]) + result // hex_16[15]

//
//            
////            1 0 0 1 1 1 1
////            &
////            0 0 0 1 1 1 1
////            0 0 0 1 1 1 1
////            15 F
////            
////            
////            1 0 0 1 1 1 1
////            0 0 0 0 1 0 0
////             2  1  0
////            1 0 0   4
//            
//            
//            
            print("\(self) Get result :",result)
            temp = temp >> 4
            print("after bitwise shift right get value",temp)
        }
        return result
    }
}

79.Hex
//
////(NSData? ,NSError?) -> void
//
struct MyStruct {
    var mystructname : String
    init(_mystructname:String){
        mystructname = _mystructname
    }
}

var my = MyStruct.init(_mystructname: "-")
my.mystructname = "Lhong"
print(my.mystructname)

struct ABC {
    var a : Int
    init(_a:Int){
        a = _a
    }
    func r (_x : Int) -> Int {
        return a * _x
    }
}

func ab(number : Int , _struct : ABC) -> Int { // ( 5 ,  )
    let xx = _struct.r(_x: number)
    return xx
}

var object = ABC.init(_a: 2)

ab(number: 5 , _struct: object)

// struct กับ class

//struct -> passed by value
//class ->  passed by refernce

struct A {
    var a : Int
    init(_a:Int){
        a = _a
    }
}

var a_one = A.init(_a: 1)
a_one.a = 0
var b_one = a_one // ฟ้า กับ ฟ้า

//print(b_one.a)
b_one.a = 5  // ชมพู
print(b_one.a)
print(a_one.a)

class classA {
    var a : Int
    init(_a:Int){
        a = _a
    }
}

var one_classA = classA.init(_a: 0)
one_classA.a = 1

var two_classA = one_classA // ฟ้า  กับ ฟ้า

two_classA.a = 66666
print(one_classA.a)

//Protocol 
// get  ->  read only property
// get set -> read/write property
protocol Defeat {
    var random : Int { get set }
    var count : Int? { get set }
    var optional : Int? { get }
    func ranc_func ()-> Int
}
//struct
class defeat_monster : Defeat {
    var gem : Double // เพิ่มนอกเหนือจาก protocol
    var score : Int // เพิ่มนอกเหนือจาก protocol
    
    var count : Int?
    var random: Int
    var optional : Int? { get{return nil} }
   
    init(_count:Int){
        self.gem = 0.00
        self.random = 0
        self.score = 0
        self.score = 0
        self.count = _count
    }
    func ranc_func() -> Int {
        random = Int(arc4random_uniform(UInt32(count!)+1)) // Int     arc4random_uniform(UInt32(3)   0 1 2 3
        return random
    }
}

var hero = defeat_monster.init(_count: 3)

for round in 0...10-1 {
    var random = hero.ranc_func()
    switch random {
        case 0:
        print("\(round) -> Drop : GEM")
        case 1:
        print("\(round) -> Drop : Gold")

        case 2:
        print("\(round) -> Drop : Silver")

        default:
        print("\(round) -> error!")

    }
}






































