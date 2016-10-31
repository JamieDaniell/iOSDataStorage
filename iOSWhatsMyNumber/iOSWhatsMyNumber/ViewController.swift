//
//  ViewController.swift
//  iOSWhatsMyNumber
//
//  Created by James Daniell on 31/10/2016.
//  Copyright © 2016 JamesDaniell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    
    @IBAction func save(_ sender: AnyObject)
    {
        UserDefaults.standard.set(numberField.text, forKey: "number")
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        if let number = numberObject as? String
        {
            numberField.text = number
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

