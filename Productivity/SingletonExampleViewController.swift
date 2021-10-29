//
//  SingletonExampleViewController.swift
//  Productivity
//
//  Created by Serkan Mehmet Malagiç on 29.10.2021.
//

import UIKit

//  Kendi tipinde değişken tanımlamaksızın özellikleri kullanmamızı sağlar. Bu sayede let obj = Person() dememize gerek kalmaz
class Person {
    
    static let shared = Person()
    
    var userName = "Serkan"
    
}

class SingletonExampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        printSingletonShared()
        
    }
    
    func printSingletonShared(){
        print( Person.shared.userName )
    }
    

}
