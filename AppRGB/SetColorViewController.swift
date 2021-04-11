//
//  ViewController.swift
//  AppRGB
//
//  Created by macbook on 26.03.21.
//

import UIKit

class SetColorViewController: UIViewController {
    
    @IBOutlet weak var valueOfRedSlider: UILabel!
    @IBOutlet weak var valueOfGreenSlider: UILabel!
    @IBOutlet weak var valueOfBlueSlider: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    var colorViewFromColorVC: UIColor!
    var delegate: SetColorViewControllerDelegate!
    var red: CGFloat!
    var green: CGFloat!
    var blue: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        setColorsOfSliders()
        setSliders()
        showValueOfSliders()
        changeColorOfView()
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
    
    @IBAction func doneBtnPressed() {
        delegate.setNewValues(for: colorView.backgroundColor ?? .white, andRgb: red, green: green, blue: blue)
        dismiss(animated: true)
    }
    
    private func setSliders() {
        redSlider.value = Float(red)
        greenSlider.value = Float(green)
        blueSlider.value = Float(blue)
    }
    
    private func changeColorOfView() {
        red = CGFloat(redSlider.value)
        green = CGFloat(greenSlider.value)
        blue = CGFloat(blueSlider.value)
        colorView.backgroundColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1
        )
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


