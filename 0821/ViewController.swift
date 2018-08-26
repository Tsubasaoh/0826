//
//  ViewController.swift
//  0821
//
//  Created by 王奕功 on 2018/8/21.
//  Copyright © 2018年 王奕功. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zodiacType: UITextField!
    @IBOutlet weak var genderType: UISegmentedControl!
    @IBOutlet weak var answerImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func answerSend(_ sender: Any) {
        if (zodiacType.text)=="leo"{
            if genderType.selectedSegmentIndex == 1{
            answerImage.image = UIImage(named: "11")
        }else{answerImage.image = UIImage(named: "brothers1")
        }
    }
    
    @IBAction func Closekeyboard(_ sender: Any) {
    }
}
}
