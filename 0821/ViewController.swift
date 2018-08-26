//
//  ViewController.swift
//  0821
//
//  Created by 王奕功 on 2018/8/21.
//  Copyright © 2018年 王奕功. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//宣告所有元件類別先
    @IBOutlet weak var zodiacType: UITextField!
    @IBOutlet weak var genderType: UISegmentedControl!
    @IBOutlet weak var ageSliderControl: UISlider!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var numberStepper: UIStepper!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var chooseType: UISegmentedControl!
    @IBOutlet weak var answerImage: UIImageView!
    var numValue:Int=0 //要宣告stepper的值為整數

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //真相只有一個？
    @IBAction func answerSend(_ sender: Any) {
        if  zodiacType.text=="獅子"
        && genderType.selectedSegmentIndex == 1
        && chooseType.selectedSegmentIndex == 1
        && ageLabel.text == "31"
        && numberLabel.text == "9"{
           answerImage.image = UIImage(named: "yes")
        } else{ self.answerImage.image = UIImage(named: "no")
   }
}
    @IBAction func ageSlider(_ sender: Any) {
        ageLabel.isHidden = false
        ageLabel.text = String(Int(ageSliderControl.value)) }
    @IBAction func numberStepper(_ sender: UIStepper) {
        numValue = Int(numberStepper.value)
        numberLabel.text = "\(numValue)"
        numberStepper.maximumValue = 9 //設定最大值
        numberStepper.minimumValue = 0 //設定最小值
        numberStepper.wraps = true // 到最大值以後，再按一次會從最小值繼續加
    }
}
