//
//  ViewController.swift
//  GoddessHairSalonSwiftDemo
//
//  Created by galaxy on 2017/9/12.
//  Copyright © 2017年 galaxy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var packerView: UIPickerView!
    
    
    let name = ["赵丽颖","范冰冰"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        packerView.delegate = self;
        packerView.dataSource = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoGoddess" {
            let index = packerView.selectedRow(inComponent: 0)
            var imgName: String?
            
            switch index {
            case 0:
                imgName = "zhaoliying"
            case 1:
                imgName = "fanbingbing"
            default:
                imgName = nil
            }
            
            var vc = segue.destination as! GoddessVC
            vc.imgName = imgName
        }
    }
    
    
    @IBAction func close(segue:UIStoryboardSegue){
        print("close")
    }


}

