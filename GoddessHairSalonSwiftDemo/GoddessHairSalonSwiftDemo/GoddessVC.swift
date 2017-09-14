//
//  GoddessVC.swift
//  GoddessHairSalonSwiftDemo
//
//  Created by galaxy on 2017/9/14.
//  Copyright © 2017年 galaxy. All rights reserved.
//
import UIKit

class GoddessVC: UIViewController {
    
    var imgName :String?
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if imgName != nil {
//            imgView.image = UIImage(named:imgName!)

//        }
        
        if let name = imgName {
            imgView.image = UIImage(named:name)

            switch name {
            case "zhaoliying":
                navigationItem.title = "赵丽颖"
            case "fanbingbing":
                navigationItem.title = "范冰冰"
            default:
                navigationItem.title = "画廊"
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func close(segue:UIStoryboardSegue){
        print("close")
    }
    
    @IBAction func shareTapped(_ sender: Any) {


    }
}
