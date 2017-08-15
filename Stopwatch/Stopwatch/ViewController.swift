//
//  ViewController.swift
//  Stopwatch


import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 0

    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer() {
        
        time += 1
        
        timerLabel.text = "\(time)"
        
    }
    
    @IBAction func play(_ sender: AnyObject) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.increaseTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(_ sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

