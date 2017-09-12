//
//  ViewController.swift
//  LoveFinderSwiftDemo
//
//  Created by galaxy on 2017/9/8.
//  Copyright © 2017年 galaxy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UITextViewDelegate {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var sex: UISegmentedControl!
    @IBOutlet weak var date: UIDatePicker!
 
    @IBOutlet weak var heightLab: UILabel!
    @IBOutlet weak var house: UISwitch!
    @IBOutlet weak var textView: UITextView!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func height(_ sender: Any) {
        let slider = sender as! UISlider
        let i = Int(slider.value)
        slider.value = Float(i)
        heightLab.text = "\(i)厘米"
        
        
    }
    
    
    @IBAction func sureBtn(_ sender: Any) {
        let sexStr = sex.selectedSegmentIndex == 0 ? "高富帅" : "白富美"
        let gregorian = NSCalendar(calendarIdentifier:NSCalendar.Identifier.gregorian)
        
        let now = Date()
        
        let components = gregorian?.components(NSCalendar.Unit.year, from: date.date, to: now, options: NSCalendar.Options.init(rawValue: 0));
        let age = components?.year
        
        let isHouse = house.isOn ? "有房" : "没房"
        
        textView.text = "\(name.text!),\(sexStr),年龄：\(age!),\(isHouse),身高：\(heightLab.text!)"
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        name .resignFirstResponder()
        textView.resignFirstResponder()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField .resignFirstResponder()
        return true
    }
    
    
    
    
    


}

