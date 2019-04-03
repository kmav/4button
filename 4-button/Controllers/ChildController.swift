//
//  ViewController.swift
//  4-button
//
//  Created by Konstantinos M on 27/03/2019.
//  Copyright © 2019 Nikatec. All rights reserved.
//

import UIKit
import RealmSwift

class ChildController: UIViewController {
    // Get the default Realm
    let realm = try! Realm()

    @IBOutlet var numberOfPuppies: UILabel!
    @IBOutlet var ralmPath: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let realmPath = realm.configuration.fileURL?.absoluteString
        ralmPath.text = realmPath
        print("Realm Path: \(String(describing: realmPath))")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Query Realm for all dogs less than 2 years old
        let puppies = realm.objects(Dog.self).filter("age < 2")
        print("Number of dog puppies: \(puppies.count)")  // => 0 because no dogs have been added to the Realm yet
        numberOfPuppies.text = "\(puppies.count)"
    }
}

