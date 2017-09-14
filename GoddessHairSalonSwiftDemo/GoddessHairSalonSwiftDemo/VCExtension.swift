//
//  VCExtension.swift
//  GoddessHairSalonSwiftDemo
//
//  Created by galaxy on 2017/9/14.
//  Copyright © 2017年 galaxy. All rights reserved.
//

import UIKit

extension ViewController:UIPickerViewDataSource{
    func number() {

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1;
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return name.count
    }
}


extension ViewController:UIPickerViewDelegate{

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return name[row]
    }
}
