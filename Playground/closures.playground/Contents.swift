//: Playground - noun: a place where people can play

import UIKit
/*
{
    (parameter) -> returnType in
    statement
}
*/

let level_up = { (level:Int) -> Int in
    return level + 1
}

let monster = level_up
for i in 1 ... 10 - 1 {
    print(monster(i)) // 1 2
}

var array = ["ง","ข","ค","ก"]

let sort_with_closures_style = array.sort({ (temp_a:String , temp_b:String) -> Bool in
    return temp_a < temp_b
})
print(sort_with_closures_style)

let sort_without_return = array.sort(){temp_a , temp_b in temp_a < temp_b }
print(sort_without_return)

let sort_short = array.sort(){ $0 < $1 }
print(sort_short)


func hero(level_mul:Int) -> ((Int)->Int) { // 2
    let closures_func = {
        (level:Int) -> Int in // 5
        return level * level_mul
    }
    return closures_func
}

var player_one = hero(2)

player_one(5)

player_one(10)

player_one = hero(10)
player_one(5)

func hello(wording:String) -> (String) -> String { // hello
    var counter = 0
    return {
        (saymyname:String) -> String in
        counter += 1  // counter ++
        return (wording + " ,"+saymyname + "\(counter)")
    }
}

var hello_world = hello("Hello")
hello_world("Lhong")
hello_world("Eakkasit")
hello_world("Eakkasit")
var hello_world_two = hello("Hi ")
hello_world_two("Lhong")





