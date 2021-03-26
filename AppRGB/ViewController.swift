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
    
    @IBOutlet weak var valueOfRedSlider: UILabel!
    @IBOutlet weak var valueOfGreenSlider: UILabel!
    @IBOutlet weak var valueOfBlueSlider: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        setColorsOfSliders()
        showValueOfSliders()
    }
    
    @IBAction func redSliderSlide() {
        changeColorOfView()
        showValueOfSliders()
    }
    @IBAction func greenSliderSlide() {
        changeColorOfView()
        showValueOfSliders()
    }
    @IBAction func blueSliderSlide() {
        changeColorOfView()
        showValueOfSliders()
    }
    
    
    
    private func changeColorOfView() {
        colorView.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    private func setColorsOfSliders() {
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
    }
    private func showValueOfSliders() {
        valueOfRedSlider.text = String(round(100 * redSlider.value) / 100)
        valueOfGreenSlider.text = String(round(100 * greenSlider.value) / 100)
        valueOfBlueSlider.text = String(round(100 * blueSlider.value) / 100)
    }

    
}

