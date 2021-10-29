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
        tuples()

    }

    //  Bu fonksiyon gönderilen parametreyle değişken tipini kontrol etmektedir.
    func checkVariableType<T>(_ a: Any, myType: T.Type) {
        if let a = a as? T {
            print("\(a) ve \(myType) eşleşti")
        }
    }
    
    //  Fonksiyon her türden değişkeni alabilir. Fakat işlem yapamaz. Hata verir
    func getAnyTypes(_ x : Any , _ y : Any ){
        print("Değerler : \(x), \(y)")
    }
    
    //  Swift hazır fonksiyonu diziyi sıralama işini üstlenir
    func sortDatasArray(){
        var strArr = ["Serkan", "Gül", "Şansal", "Erman", "Amil"]
        strArr.sort()
        
        print(strArr)
    }
    
    //  Struct içerisindeki elemanlara göre sıralama yapar
    func sortStructs(){
        users.sort {
            $0.firstName < $1.firstName
        }
        print(users)
    }
    
    //  Veri depolama metodu tuple
    func tuples(){
        //  Birbirinden farklı değişkenleri tuple'de tutabiliriz. Bunları dizi halinde de birleştirebiliriz
        let myTuples = ("Serkan", 54, 54.6)
        print(myTuples.0, myTuples.1, myTuples.2)
        
        //  İki farklı dizi fakat tuple olarak birleştirmek istedik. Zip işimizi görecektir
        let word = ["One", "Two", "Three"]
        let number = 1...3
        let zipped = Array(zip(word, number))
        print(zipped)
    }

}

