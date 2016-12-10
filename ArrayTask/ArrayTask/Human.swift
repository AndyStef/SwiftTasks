//
//  Human.swift
//  ArrayTask
//
//  Created by Andy Stef on 12/10/16.
//  Copyright © 2016 Andy Stef. All rights reserved.
//

import Foundation

enum Gender {
    case Male
    case Female
}

class Human {
    var name: String
    var height: Double
    var weight: Double
    var gender: Gender

    func move() {
        print("I'm moving as simple human")
    }

    init(name: String, height: Double, weight: Double, gender: Gender) {
        self.name = name
        self.height = height
        self.weight = weight
        self.gender = gender
    }
}
