//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by o11ev on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    // текущий статус светофора
    var currentLightNumber = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        
        redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
        greenLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        currentLightNumber += 1
        
        switch currentLightNumber {
        case 0:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        case 1:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        case 2:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        default:
            print("Something went wrong")
        }
        
        if currentLightNumber == 2 {
            currentLightNumber = -1
        }
    }
    
}

