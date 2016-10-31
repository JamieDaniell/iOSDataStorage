//
//  ViewController.swift
//  iOSPermanentDataStorage
//
//  Created by James Daniell on 30/10/2016.
//  Copyright © 2016 JamesDaniell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UserDefaults.standard.set("Rob", forKey: "name")
        let nameObject = UserDefaults.standard.object(forKey: "name")
        if let name = nameObject as? String
        {
            print(name)
        }
        
        let arr = [1,2,3,4]
        
        UserDefaults.standard.set(arr, forKey: "array")
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray
        {
            print(array)
        }
        
        let number = "01747811222"
        
        UserDefaults.standard.set(number, forKey: "phone")
        
        let numberObject = UserDefaults.standard.object(forKey: "phone")
        
        if let finalphone = numberObject as? String
        {
            print(finalphone)
        }
        
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

