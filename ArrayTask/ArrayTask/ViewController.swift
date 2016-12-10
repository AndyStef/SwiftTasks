//
//  ViewController.swift
//  ArrayTask
//
//  Created by Andy Stef on 12/10/16.
//  Copyright © 2016 Andy Stef. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK: - Trainee

        let human = Human(name: "Andrew", height: 176.4, weight: 66.5, gender: .Male)
        let swimmer = Swimmer(name: "Michal Phelps", height: 201.5, weight: 95.2, gender: .Male)
        let runner = Runner(name: "Usain", height: 196.8, weight: 72.1, gender: .Male)
        let cyclist = Cyclist(name: "Martha", height: 181.2, weight: 55.2, gender: .Female)
        let dancer = Dancer(name: "Andrew Dancer", height: 179.4, weight: 70.2, gender: .Male, favouriteSong: "Move if yuo wanna", dancingExperience: 4.7, favouriteStyle: "Hip-hap")
        let anotherHuman = Human(name: "Puppey", height: 205, weight: 105, gender: .Male)

        let humanArray: [Human] = [human, swimmer, runner, cyclist, dancer, anotherHuman]

        for human in humanArray {
            printHumanInfo(human: human)
        }

        //MARK: - Mastrer

        let animal = Animal(age: 12, weight: 25.2, isPredator: false, nickname: "Just petty")
        let cat = Cat(age: 4, weight: 7.0, isPredator: false, nickname: "Shnurok")
        let zebra = Zebra(age: 23, weight: 55.4, isPredator: false, nickname: "Marty")
        let scorpion = Scorpion(age: 1, weight: 0.55, isPredator: true, nickname: "Dong")

        let animalArray = [animal, cat, zebra, scorpion]

        for animal in animalArray {
            printAnimalInfo(animal: animal)
        }

        //MARK: - Star

        let friendlyArray: [AnyObject] = [scorpion, zebra, runner, animal, dancer, cyclist, cat, swimmer, human]

        for object in friendlyArray {
            if let human = object as? Human {
                printHumanInfo(human: human)
            } else if let animal = object as? Animal {
                printAnimalInfo(animal: animal)
            }
        }

        var humanIndex = 0
        var animalIndex = 0
        for i in 0..<humanArray.count + animalArray.count {
            if (i % 2 == 0 && humanIndex < humanArray.count) || animalIndex == animalArray.count {
                printHumanInfo(human: humanArray[humanIndex])
                humanIndex += 1
            } else if (i % 2 == 1 && animalIndex < animalArray.count) || humanIndex == humanArray.count{
                printAnimalInfo(animal: animalArray[animalIndex])
                animalIndex += 1
            }
        }

        for i in 0..<max(humanArray.count, animalArray.count) {
            if i < humanIndex {
                printHumanInfo(human: humanArray[i])
            }

            if i < animalIndex {
                printAnimalInfo(animal: animalArray[i])
            }
        }

        let sortedHumanArray = humanArray.sorted { (firstHuman, secondHuman) -> Bool in
            return firstHuman.name < secondHuman.name
        }

        for human in sortedHumanArray {
            printHumanInfo(human: human)
        }

        //MARK: - Superman

        let sortedCommonArray = friendlyArray.sorted { (firstObject, secondObject) -> Bool in
            if let human = firstObject as? Human, let secondHuman = secondObject as? Human {
                return human.name < secondHuman.name
            }

            if let animal = firstObject as? Animal, let secondAnimal = secondObject as? Animal {
                return animal.nickname < secondAnimal.nickname
            }

            if firstObject is Human {
                return true
            } else {
                return false
            }
        }

        for object in sortedCommonArray {
            if let human = object as? Human {
                    printHumanInfo(human: human)
            } else if let animal = object as? Animal {
                    printAnimalInfo(animal: animal)
            }
        }
    }

    func printHumanInfo(human: Human) {
        print("Hey i'm human")
        print("Name is \(human.name)")
        print("Height is \(human.height)")
        print("Weight is \(human.weight)")
        print("Gender is \(human.gender)")
        human.move()

        if let dancer = human as? Dancer {
            print("favourite song is \(dancer.favouriteSong)")
            print("Dancing exp is \(dancer.dancingExperience)")
            print("Favourite stule is \(dancer.favouriteStyle)")
        }

        print("-------------------------------")
    }

    func printAnimalInfo(animal: Animal) {
        print("РРяяяяяяу")
        print("NIckname is \(animal.nickname)")
        print("Age is \(animal.age)")
        print("weight is \(animal.weight)")
        print("Is predator: \(animal.isPredator)")
        animal.move()
        print("-------------------------------")
    }
}

