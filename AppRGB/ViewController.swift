//
//  ViewController.swift
//  AppRGB
//
//  Created by macbook on 26.03.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func redSliderSlide() {
        changeColorOfView()
    }
    @IBAction func greenSliderSlide() {
        changeColorOfView()
    }
    @IBAction func blueSliderSlide() {
        changeColorOfView()
    }
    
    
    
    private func changeColorOfView() {
        colorView.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

}

