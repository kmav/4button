//
//  ViewController.swift
//  4-button
//
//  Created by Konstantinos M on 27/03/2019.
//  Copyright © 2019 Nikatec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var race: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dog = Dog.init(1, "Lassy", 10)
        dog.barc()
        race.text = dog.race
        self.navigationController?.title = "Dog"
    }


}

