//
//  ColorViewController.swift
//  AppRGB
//
//  Created by macbook on 11.04.21.
//

import UIKit

protocol SetColorViewControllerDelegate {
    func setNewValues(
        for view: UIColor,
        andRgb red: CGFloat,
        green: CGFloat,
        blue: CGFloat
    )
}

class ColorViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    var red: CGFloat?
    var green: CGFloat?
    var blue: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let setColorVC = segue.destination as? SetColorViewController else { return }
        setColorVC.colorViewFromColorVC = colorView.backgroundColor
        setColorVC.delegate = self
        setColorVC.red = red ?? 1
        setColorVC.green = green ?? 1
        setColorVC.blue = blue ?? 1
    }
}

extension ColorViewController: SetColorViewControllerDelegate {
    func setNewValues(for view: UIColor, andRgb red: CGFloat, green: CGFloat, blue: CGFloat) {
        colorView.backgroundColor = view
        self.red = red
        self.green = green
        self.blue = blue
    }
}
