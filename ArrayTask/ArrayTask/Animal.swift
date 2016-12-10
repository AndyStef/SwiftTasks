//
//  Animal.swift
//  ArrayTask
//
//  Created by Andy Stef on 12/10/16.
//  Copyright © 2016 Andy Stef. All rights reserved.
//

import Foundation

class Animal {
    var age: Int
    var weight: Double
    var isPredator: Bool
    var nickname: String

    func move() {
        print("Simple animal movement")
    }

    init(age: Int, weight: Double, isPredator: Bool, nickname: String) {
        self.age = age
        self.weight = weight
        self.isPredator = isPredator
        self.nickname = nickname
    }
}
