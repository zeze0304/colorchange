//
//  ViewController.swift
//  colornew
//
//  Created by MacbookPro on 2022/11/1.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
   
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var alphaSwitch: UISwitch!
    
    @IBOutlet weak var randombutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorChanged(_ sender: Any) {
        
        flagImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    
    @IBAction func randomColor(_ sender: Any) {
        redSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        flagImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        
    }
    
    @IBAction func switchButton(_ sender: Any) {
        
        
        
        if redSwitch.isOn{
            redSlider.isEnabled = true}
        else{redSlider.isEnabled = false}
        
        if blueSwitch.isOn{
            blueSlider.isEnabled = true}
        else{blueSlider.isEnabled = false}
        
        if greenSwitch.isOn{
            greenSlider.isEnabled = true}
        else{greenSlider.isEnabled = false}
        
        if alphaSwitch.isOn{
            alphaSlider.isEnabled = true}
        else{alphaSlider.isEnabled = false}
        
        if redSwitch.isOn && greenSwitch.isOn && blueSwitch.isOn && alphaSwitch.isOn{
            randombutton.isEnabled = true
        }else{
            randombutton.isEnabled = false
        }
        
        
    }

    
}

