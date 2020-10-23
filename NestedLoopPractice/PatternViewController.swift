//
//  PatternViewController.swift
//  NestedLoopPractice
//
//  Created by Tai Chin Huang on 2020/10/22.
//

import UIKit

class PatternViewController: UIViewController {
    
    @IBOutlet weak var patternSegmentControl: UISegmentedControl!
    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var sliderNumberLabel: UILabel!
    @IBOutlet weak var showLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var content = ""
        for _ in 1...5 {
            for _ in 1...5 {
                content = content + "🍬"
            }
            content = content + "\n"
        }
        showLabel.text = content
    }
    @IBAction func patternChange(_ sender: UISlider) {
        let patternChange = patternSegmentControl.selectedSegmentIndex
        sender.value = sender.value.rounded()
        let number = Int(sender.value)
        sliderNumberLabel.text = "\(number)"
        var content = ""
        switch patternChange {
        case 0: // straight line
            for i in 1...number {
                for _ in 1...number {
                    if i == number {
                        content = content + "🍬"
                    } else {
                        content = content + "😈"
                    }
                }
                content = content + "\n"
            }
        case 1: // 斜線
            for i in 1...number {
                for j in 1...number {
                    if i == j {
                        content = content + "🍬"
                    } else {
                        content = content + "😈"
                    }
                }
                content = content + "\n"
            }
        case 2: // 反斜線
            for i in 1...number {
                for j in 1...number {
                    if i + j == number + 1 { //總和均為number+1
                        content = content + "🍬"
                    } else {
                        content = content + "😈"
                    }
                }
                content = content + "\n"
            }
        case 3: //交叉
            for i in 1...number {
                for j in 1...number {
                    if (i + j) % 2 != 0 { //只要是奇數就顯示糖果
                        content = content + "🍬"
                    } else {
                        content = content + "😈"
                    }
                }
                content = content + "\n"
            }
        default:
            break
        }
        showLabel.text = content
    }
    
}
