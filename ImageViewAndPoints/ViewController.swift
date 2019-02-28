//
//  ViewController.swift
//  ImageViewAndPoints
//
//  Created by 金築泰雅 on 2019/02/28.
//  Copyright © 2019 金築泰雅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
   
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.alpha = CGFloat(slider.value)
//        imageView.image = UIImage (named: "cat")
//        imageView.alpha = 0.3
        
    }


    @IBAction func clickedSwitch(_ sender: UISwitch) {
   print("Switchが押されたよ")
        print(sender.isOn)
        if sender.isOn{
            imageView.image = UIImage (named:"cat")
        }else {
           imageView.image = UIImage (named: "dog")        }
    }
    
    @IBAction func sliderDidChngedValue(_ sender:UISlider) {
        imageView.alpha = CGFloat(sender.value)    }
}

