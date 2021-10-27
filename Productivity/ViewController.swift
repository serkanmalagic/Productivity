//
//  ViewController.swift
//  Productivity
//
//  Created by Serkan Mehmet Malagiç on 28.10.2021.
//

import UIKit

struct User {
    var firstName: String
}

var users = [
    User(firstName: "Serkan"),
    User(firstName: "Gül"),
    User(firstName: "Şansal"),
    User(firstName: "Erman"),
    User(firstName: "Amil")
]

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkVariableType("Serkan", myType: String.self)
        getAnyTypes(12, 12)
        getAnyTypes("12", "12")
        getAnyTypes(12.1, 12.1)
        sortDatasArray()
        sortStructs()

    }

    //  Bu fonksiyon gönderilen parametreyle değişken tipini kontrol etmektedir.
    func checkVariableType<T>(_ a: Any, myType: T.Type) {
        if let a = a as? T {
            print("\(a) ve \(myType) eşleşti")
        }
    }
    
    func getAnyTypes(_ x : Any , _ y : Any ){
        print("Değerler : \(x), \(y)")
    }
    
    func sortDatasArray(){
        var strArr = ["Serkan", "Gül", "Şansal", "Erman", "Amil"]
        strArr.sort()
        
        print(strArr)
    }
    
    
    func sortStructs(){
        users.sort {
            $0.firstName < $1.firstName
        }
        print(users)
    }

}

