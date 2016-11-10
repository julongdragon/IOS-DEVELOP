//: Playground - noun: a place where people can play

import UIKit

/* Entrance to meet the King
 
 Knight  level  = 100

*/

//guard condition else {
//    
//}

func Guard(_level:Int?,_role:String) -> String {
    let knight_level_default : Int = 50 // defaults
    guard let _ = _level , _role == "Knight" , _level > knight_level_default else {
        return "Wanna Fight Me ?"
    }
    
    print("Ohh...You are Black Knight!")
    return "Welcome back my Lord !"
    
}

Guard(_level:100,_role:"monster")
