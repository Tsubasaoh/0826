//
//  ViewController.swift
//  0821
//
//  Created by 王奕功 on 2018/8/21.
//  Copyright © 2018年 王奕功. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//outlet們宣告所有元件類別先
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
    //真相只有一個？設定唯一正解
    @IBAction func answerSend(_ sender: Any) {
        if  zodiacType.text=="獅子"//星座要是獅子座
        && genderType.selectedSegmentIndex == 1//還要是大貓女孩
        && chooseType.selectedSegmentIndex == 1//人生志願要環遊世界
        && ageLabel.text == "31"//年紀越接近越好
            && numberLabel.text == "9"{//最喜歡的數字長長久久囉
           answerImage.image = UIImage(named: "yes")
        } else{ self.answerImage.image = UIImage(named: "no")
   }
}
//設定Slider旁的數字隨之變動，傳值來著
    @IBAction func ageSlider(_ sender: Any) {
        ageLabel.isHidden = false
        ageLabel.text = String(Int(ageSliderControl.value)) }
//設定stepperg數字
    @IBAction func numberStepper(_ sender: UIStepper) {
        numValue = Int(numberStepper.value)
        numberLabel.text = "\(numValue)"
        numberStepper.maximumValue = 9 //設定最大值
        numberStepper.minimumValue = 0 //設定最小值
        numberStepper.wraps = true // 到最大值以後，再按一次會從最小值繼續加
    }
}
