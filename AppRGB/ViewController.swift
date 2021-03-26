//
//  ViewController.swift
//  AppRGB
//
//  Created by macbook on 26.03.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valueOfRedSlider: UILabel!
    @IBOutlet weak var valueOfGreenSlider: UILabel!
    @IBOutlet weak var valueOfBlueSlider: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    
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
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    private func showValueOfSliders() {
        valueOfRedSlider.text = String(format: "%.2f", redSlider.value)
        valueOfGreenSlider.text = String(format: "%.2f", greenSlider.value)
        valueOfBlueSlider.text = String(format: "%.2f", blueSlider.value)
    }

}

