//
//  Dancer.swift
//  ArrayTask
//
//  Created by Andy Stef on 12/10/16.
//  Copyright © 2016 Andy Stef. All rights reserved.
//

import Foundation

class Dancer: Human {
    var favouriteSong: String
    var dancingExperience: Double
    var favouriteStyle: String

    override func move() {
        super.move()
        print("I'm moving like a Michael Jackson OUUUUUUU")
    }

    init(name: String, height: Double, weight: Double, gender: Gender, favouriteSong: String, dancingExperience: Double, favouriteStyle: String) {
        self.favouriteSong = favouriteSong
        self.dancingExperience = dancingExperience
        self.favouriteStyle = favouriteStyle
        super.init(name: name, height: height, weight: weight, gender: gender)
    }
}
