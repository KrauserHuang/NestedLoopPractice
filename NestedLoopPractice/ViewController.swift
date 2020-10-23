//
//  ViewController.swift
//  NestedLoopPractice
//
//  Created by Tai Chin Huang on 2020/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var sliderNumber: UILabel!
    @IBOutlet weak var shapeSegmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var content = ""
        for _ in 1...5 {
            for _ in 1...5 {
                content = content + "🍭"
            }
            content = content + "\n"
        }
        showLabel.text = content
    }
    @IBAction func sizeChange(_ sender: UISlider) {
        let shapeChange = shapeSegmentControl.selectedSegmentIndex
        sender.value = sender.value.rounded()
        let number = Int(sender.value)
        sliderNumber.text = "\(number)"
        var content = ""
        switch shapeChange {
        case 0: // rectangle
            for _ in 1...number {
                for _ in 1...number {
                    content = content + "🍭"
                }
                content = content + "\n"
            }
        case 1: // triangle
            for i in 1...number {
                for _ in 1...i {
                    content = content + "🍭"
                }
                content = content + "\n"
            }
        case 2: // pyramid
            for i in 1...number {
                let spaceCount = number - i
                let lollipopCount = (2*i) - 1
                let spaceShow = String(repeating: "👻", count: spaceCount)
                let lollipopShow = String(repeating: "🍭", count: lollipopCount)
                content = content + "\(spaceShow+lollipopShow)"
                content = content + "\n"
            }
        case 3: // diamond
            for i in 1...2*number - 1 {
                var spaceCount = 0
                var lollipopCount = 0
                if i < number + 1 {
                    lollipopCount = (2*i) - 1
                    spaceCount = number - i
                } else {
                    lollipopCount = 2*(2*number - i) - 1
                    spaceCount = i - number
                }
                let spaceShow = String(repeating: "👻", count: spaceCount)
                let lollipopShow = String(repeating: "🍭", count: lollipopCount)
                content = content + "\(spaceShow+lollipopShow)"
                content = content + "\n"
            }
        default:
            break
        }
        showLabel.text = content
    }
    

}

