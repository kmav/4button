//
//  ViewController.swift
//  4-button
//
//  Created by Konstantinos M on 27/03/2019.
//  Copyright © 2019 Nikatec. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    let realm = try! Realm()
    
    @IBOutlet var race: UILabel!
    @IBOutlet var name: UITextField!
    @IBOutlet var age: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dog = Dogy.init(1, "Lassy", 10)
        dog.barc()
        race.text = dog.race
        self.navigationController?.title = "Dog"
    }

    @IBAction func addObject(_ sender: Any) {
        if let name = name.text {
            let myDog = Dog()
            myDog.name = name
            myDog.age = Int(age.text ?? "") ?? 0
            print("name of dog: \(myDog.name)")
            
            // Get the default Realm
            // let realm = try! Realm()
            
            // Query Realm for all dogs less than 2 years old
            let puppies = realm.objects(Dog.self).filter("age < 2")
            print("Number of dog puppies: \(puppies.count)")  // => 0 because no dogs have been added to the Realm yet
            
            // Persist your data easily
            try! realm.write {
                realm.add(myDog)
            }
        }
    }
}

