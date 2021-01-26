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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        startButton.layer.cornerRadius = 10
        
    }

    @IBAction func startButtonPressed() {
    }
    
}

