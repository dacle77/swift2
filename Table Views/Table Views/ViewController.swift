//
//  ViewController.swift
//  Table Views
//
//  Created by Rob Percival on 16/06/2015.
//  Copyright © 2015 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    var cellContent = ["Rob", "Kirsten", "Tommy", "Ralphie"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContent.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellContent[(indexPath as NSIndexPath).row]
        
        return cell
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

