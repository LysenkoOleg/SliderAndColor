//
//  ViewController.swift
//  SliderAndColor
//
//  Created by Олег Лысенко on 23.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var redLabel: UILabel!
    
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var greenLabel: UILabel!
    
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var blueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        mainView.layer.cornerRadius = 10
        
        redSlider.minimumTrackTintColor = .red
        redLabel.text = String(redSlider.value)
        
        greenSlider.minimumTrackTintColor = .green
        greenLabel.text = String(greenSlider.value)
        
        blueSlider.minimumTrackTintColor = .blue
        blueLabel.text = String(blueSlider.value)
    }

    func changeColorOnMainView() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func redSliderAction() {
        redLabel.text = String(redSlider.value)
        changeColorOnMainView()
        
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(greenSlider.value)
        changeColorOnMainView()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(blueSlider.value)
        changeColorOnMainView()
    }
}
