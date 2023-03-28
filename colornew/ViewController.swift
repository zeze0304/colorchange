//
//  ViewController.swift
//  colornew
//
//  Created by MacbookPro on 2022/11/1.
//

import UIKit

class ViewController: UIViewController {

    //拉執行func後，顯示的outlet
    //浮世繪圖flagImageView，型別為UIImageView
    @IBOutlet weak var flagImageView: UIImageView!
    //紅色滑桿redSlider，型別為UISlider
    @IBOutlet weak var redSlider: UISlider!
    //綠色滑桿greenSlider，型別為UISlider
    @IBOutlet weak var greenSlider: UISlider!
    //藍色滑桿blueSlider，型別為UISlider
    @IBOutlet weak var blueSlider: UISlider!
    //透明度滑桿alphaSlider，型別為UISlider
    @IBOutlet weak var alphaSlider: UISlider!
   
    //紅色控制紐redSwitch，型別為UISwitch
    @IBOutlet weak var redSwitch: UISwitch!
    //綠色控制紐greenSwitch，型別為UISwitch
    @IBOutlet weak var greenSwitch: UISwitch!
    //藍色控制紐blueSwitch，型別為UISwitch
    @IBOutlet weak var blueSwitch: UISwitch!
    //透明度控制紐alphaSwitch，型別為UISwitch
    @IBOutlet weak var alphaSwitch: UISwitch!
    //隨機按鈕randombutton，型別為UIButton
    @IBOutlet weak var randombutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //拉四條sliders的action，設func為colorChanged
    @IBAction func colorChanged(_ sender: Any) {
        
        //物件.屬性=型別()生出UIColor顏色
        //value的型別為Float，red/green/blue/alpha的型別為CGFloat
        //用CGFloat()的方式讓redSlider.value的型別從Float變CGFloat
        flagImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    //拉隨機按鈕randombutton的Btn，設func為randomColor
    @IBAction func randomColor(_ sender: Any) {
        //生出各滑桿的隨機數值(0-1)
        //redSlider的value生出浮點數的隨機數字(介於0-1間)
        redSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        //物件.屬性=型別()生出UIColor顏色
        //value的型別為Float，red/green/blue/alpha的型別為CGFloat
        //用CGFloat()的方式讓redSlider.value的型別從Float變CGFloat
        flagImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        
    }
    
    //拉控制鈕redSwitch等的Btn，設func為randomColor
    @IBAction func switchButton(_ sender: Any) {
        //用if else寫
        //if 紅色控制鈕 打開(isOn，型別為Bool，只能接true/false)
        if redSwitch.isOn{
            //紅色滑桿就 可以啟動(isEnabled，型別為Bool，只能接true/false)
            //物件.屬性=生出的東西
            redSlider.isEnabled = true}
        //如果不打開 紅色滑桿就不能啟動
        //物件.屬性=生出的東西
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

