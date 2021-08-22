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
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redLabel.text = String(redSlider.value)
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenLabel.text = String(greenSlider.value)
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueLabel.text = String(blueSlider.value)
    }

    func changeColorOnMainView() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
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
