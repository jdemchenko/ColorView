//
//  ColorViewController.swift
//  AppRGB
//
//  Created by macbook on 11.04.21.
//

import UIKit

protocol SetColorViewControllerDelegate {
    func setNewValues( for view: UIColor )
}

class ColorViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let setColorVC = segue.destination as? SetColorViewController else { return }
        setColorVC.colorViewFromColorVC = colorView.backgroundColor
        setColorVC.delegate = self
    }
}

extension ColorViewController: SetColorViewControllerDelegate {
    func setNewValues(for view: UIColor) {
        colorView.backgroundColor = view
    }
}
