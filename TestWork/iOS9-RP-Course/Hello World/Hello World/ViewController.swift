//
//  ViewController.swift
//  Hello World
//
//  Created by Rob Percival on 15/06/2015.
//  Copyright © 2015 Appfish. All rights reserved.
//  Modified 2016 DaCle

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var yearsOutput: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func submitButtonPressed(sender: AnyObject) {
        
        var catAge = Int(textField.text!)
        
        catAge = catAge! * 7
     
            yearsOutput.text = "Cat is \(catAge!) in cat Years"

        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello Cleland")
        
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

