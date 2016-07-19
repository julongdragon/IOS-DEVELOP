//: Error Handling
//enum protocol  throws // do try catch
import UIKit

enum Error : ErrorProtocol { // ErrorType
    case purchaseError
}

class MyCreditCard {
    let limit = 12000
    var balance = 0
    func purchaseAdsOnFacebook(spent:Int) throws { // 11000
        if spent > limit {
           throw Error.purchaseError
        }else{
            balance += spent
            print("you can purcahse Facebook Ads . now amount spent : \(spent)")
        }
    }
}

let mycard = MyCreditCard()

do {
    try mycard.purchaseAdsOnFacebook(spent: 11000)
    print("ads runing!")
}catch Error.purchaseError{
    print("please change spent limit!")
}



