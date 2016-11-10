//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Generics

func DemoFuncString (_ _input : String) -> String {
    return _input
}
DemoFuncString("หัวเราะ 😄")

func DemoFuncInt (_ _input : Int) -> Int {
    return _input
}

DemoFuncInt(555)

func DemoGenerics <SomeType> (_ _input : SomeType) -> SomeType {
    return _input
}

DemoGenerics([0,1,2,3])

//DemoGenerics("หัวเราะ 😄")
//DemoGenerics(55555)
//DemoGenerics(5.555)
//DemoGenerics(true)








