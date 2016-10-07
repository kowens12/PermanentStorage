//
//  ViewController.swift
//  PermanentStorage
//
//  Created by Katherine Owens on 10/7/16.
//  Copyright © 2016 Katherine Owens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UserDefaults.standard.set("Kate", forKey: "name")
        
        let arr = [1, 2, 3, 4]
        
        UserDefaults.standard.set(arr, forKey: "array")
        
        let returnedArray = UserDefaults.standard.object(forKey: "array") as! NSArray
        
        for x in returnedArray {
            print(x)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

