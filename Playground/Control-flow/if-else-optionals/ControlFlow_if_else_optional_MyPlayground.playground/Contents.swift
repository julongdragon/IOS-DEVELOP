//: Playground - noun: a place where people can play

import UIKit
// Optionals , BoolenType protocol ,  optional binding declaration

var Myname:String? = "Eakkasit"
    //Myname = nil

let Mydog:String? = nil
    //Mydog = nil

var a:String? = nil
let b:String? = nil


if (Myname != nil) {
    print("YES!")
}else{
    print("NO!")
}

if var name = Myname {
    print("My name is \(Myname!)")
    print(name)
}

let SwordLevel:Int? =  nil
if SwordLevel! > 99 {
    print("ระดับสูงสุด")
}



















