//
//  ViewController.swift
//  HW6
//
//  Created by Andy Stef on 12/10/16.
//  Copyright © 2016 Andy Stef. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let targetRect = CGRect(x: 4, y: 4, width: 3, height: 3)

        for _ in 0..<100 {
            let point = addRandomPoint()
           // if (point.x >= 4 && point.x <= 6) && (point.y >= 4 && point.y <= 6) {
            if targetRect.contains(point) {
                print("Point - \(point)")
                print("------------------------")
            }
        }
    }

    func addRandomPoint() -> CGPoint {
        let x = arc4random() % 9 + 1
        let y = arc4random() % 9 + 1
        return CGPoint(x: CGFloat(x), y: CGFloat(y))
    }
}

