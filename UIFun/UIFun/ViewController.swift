//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paintBucket: UIImageView!
    
    @IBOutlet weak var segmentControlTop: UISegmentedControl!
    
    @IBOutlet weak var segmentControlBottom: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.paintColorName = "red"
    }
    

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        print("This is the first color \(first)")
        print("This is the second color \(second)")

        let combination = (first, second)
        print(combination)
        switch combination {
        case ("red", "red"):
            paintBucket.paintColorName = "red"
            print("red")
            return paintBucket.paintColorName
        case("red", "yellow"):
            paintBucket.paintColorName = "orange"
            print("orange")
            return paintBucket.paintColorName
        case ("Red", "blue"):
            paintBucket.paintColorName = "purple"
            print("purple")
            return paintBucket.paintColorName
        case ("yellow", "red"):
            paintBucket.paintColorName = "orange"
            print("orange")
            return paintBucket.paintColorName
        case("yellow", "yellow"):
            paintBucket.paintColorName = "yellow"
            print("yellow")
            return paintBucket.paintColorName
        case ("yellow", "blue"):
            paintBucket.paintColorName = "green"
            print("green")
            return paintBucket.paintColorName
        case ("blue", "red"):
            paintBucket.paintColorName = "purple"
            print("purple")
            return paintBucket.paintColorName
        case("blue", "yellow"):
            paintBucket.paintColorName = "green"
            print("green")
            return paintBucket.paintColorName
        case ("blue", "blue"):
            paintBucket.paintColorName = "blue"
            print("blue")
            return paintBucket.paintColorName
        default: print("Invalid paint color")
        }
        return "none"
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        
        
        mixColors(withFirst: segmentControlTop.color.name, second: segmentControlBottom.color.name)
        
    }
}
