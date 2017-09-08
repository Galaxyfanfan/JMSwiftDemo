//
//  ViewController.swift
//  ChineseZodiacSwiftDemo
//
//  Created by galaxy on 2017/9/7.
//  Copyright © 2017年 galaxy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textF: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    
    let offset = 4
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sureBtn(_ sender: AnyObject) {
        textF.resignFirstResponder()
        
        if var year = Int(textF.text!) {
            year = year < 4 ? year + 12 : year//避免下一步相减后出现负数 导致获取不到图片
            let imgNumber = (year - offset) % 12
            
            imgView.image = UIImage(named:String(imgNumber))
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        textF.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

