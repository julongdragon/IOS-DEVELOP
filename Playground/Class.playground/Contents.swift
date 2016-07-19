//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Class"

// inheritance , superclass , subclass , instance

//class classname {
//    // property declaration
//}
//
//var instance = classname()
//superclass
class Zombie { // เครื่องยนต์
    var zombie_name :String = "Lhong"
    var level:Int
    var power:Int
    init(_power:Int,_level:Int){
        self.power = _power
        self.level = _level
    }
    func saymyname() -> String {
        return "My name \(zombie_name)"
    }
}

//subclass
class Weapon : Zombie {
    var blade_level_mul:Int = 5
    init(_weaponpower:Int){
        super.init(_power: _weaponpower, _level: 456)
    }
    func makePower(){
        print("power now!")
    }
    override func saymyname() -> String {
        return "Hello oerride"
    }
    var bladePower:Int {
        get {
            return 100 * blade_level_mul
        }
        set {
            blade_level_mul = newValue * 20
        }
    }
}

//var zombie = Weapon(_power: 10,_level:50)
//zombie.makePower()
//zombie.zombie_name

var zombie = Weapon.init(_weaponpower: 500)
zombie.power
zombie.bladePower = 100 // 2000
zombie.bladePower  // get 200000
//var zombie_one = Zombie.init(_power: 100,_level: 1)
//zombie_one = Zombie.init(_power: 200,_level: 2)
//print(zombie_one.power)

//
//zombie_one.zombie_name = "Zombie!!!"
//zombie_one.level = 3
//zombie_one.power = 300
//print(zombie_one.power)
//
//zombie_one.saymyname()
//
//var zombie_two = Zombie()
//zombie_two.zombie_name = "Zombie2!!!"
//zombie_two.level = 5
//zombie_two.power = 500
//print(zombie_two.power)
//zombie_two.saymyname()



