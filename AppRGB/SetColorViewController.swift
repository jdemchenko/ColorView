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
        delegate.setNewValues(for: colorView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
    
    private func setSliders() {
        redSlider.value = Float(colorViewFromColorVC.rgba.red)
        greenSlider.value = Float(colorViewFromColorVC.rgba.green)
        blueSlider.value = Float(colorViewFromColorVC.rgba.blue)
    }
    
    private func changeColorOfView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
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

extension UIColor {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        return (red, green, blue, alpha)
    }
}


