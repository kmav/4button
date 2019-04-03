//
//  Models.swift
//  4-button
//
//  Created by Konstantinos M on 04/04/2019.
//  Copyright © 2019 Nikatec. All rights reserved.
//

import Foundation
import RealmSwift

// Define your models like regular Swift classes
class Dog: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}
class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var picture: Data? = nil // optionals supported
    let dogs = List<Dog>()
}
