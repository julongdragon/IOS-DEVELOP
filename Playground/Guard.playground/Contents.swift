//: Playground - noun: a place where people can play
// Guard

import UIKit

// ต้องเป็นฮัศวิน...!! เท่านั้น!! ถึงจะยอมให้ผ่านประตูได้
//   5 < x < 6
let x : Double = 5.5
if x < 6 , x > 5 {
    print(x)
}
if 5 > 3 , 5 > 1 , 5 < 6 {
    
}


func welcomeKnight (_username:String?) {

    if let _username = _username , _username != "knight" {   //
        return
    }
    print("Wellcome \(_username!) by if")
    /*
     if {
     if{
     }else{
     if
     }
     */
    
}

func welcomeKnightGuard (_username:String?){
    guard let _username = _username  , _username == "knight"
          else {
            print("you not knight")
            return
          }
    print("Welcome \(_username) by guard")
}

    welcomeKnight      (_username: "knight")

    welcomeKnightGuard(_username: "knight")













