//
//  ViewController.swift
//  FunnyNumber
//
//  Created by PDcode MacbookPRO on 20/5/2561 BE.
//  Copyright © 2561 PDcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Explicit
    var statusBol: Bool = true
    var LabelStrings = ["AUTO", "STOP"]
    
//    Override Func สำเสร็จรูป
    var objTime = Timer()
    
    
    @objc func myRunTimer() -> Void {
        
        objTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.mySelector), userInfo: nil, repeats: true)
        
    }
    @objc func mySelector() -> Void {

        var startNumberInt: Int = Int(numberLabel.text!)!
        
        startNumberInt = startNumberInt + 1
        
        numberLabel.text = String(startNumberInt)
        
        
    }
    
    
    @IBAction func autoBtn(_ sender: UIBarButtonItem) {
// Switch Label
        if statusBol {
            showStopBtn.title = LabelStrings[1]
//  สั่งให้ตัวเลขวิ่ง
           myRunTimer()
            
            
            
        }else{
            showStopBtn.title = LabelStrings[0]
//       สั่งหยุด
            objTime.invalidate()
        }
     statusBol = !statusBol
        
        
    }
    
    
    @IBOutlet weak var showStopBtn: UIBarButtonItem!
    
    
//    เริ่มตรงนี้
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func decBtn(_ sender: UIBarButtonItem) {
        showClick(nameButtom: "decBtn")
        
        let myClass = MyClass()
        
        let currentNumberInt: Int = Int(numberLabel.text!)!
        
        let resultNumberInt : Int = myClass.decreseNumber(numberInt: currentNumberInt)
        
        let resultString = String(resultNumberInt)
        
        numberLabel.text = resultString
        
    }
    
    
    @IBAction func startOneBtn(_ sender: UIBarButtonItem) {
        showClick(nameButtom: "startOneBtn")
        let myClass = MyClass()
        numberLabel.text = myClass.startOne()
        
    }
    
    
    @IBAction func incBtn(_ sender: UIBarButtonItem) {
        showClick(nameButtom: "incBtn")
        
        let myClass = MyClass()
        let currentNumberString: String = numberLabel.text!
        let resultString: String = myClass.increaseNumber(numberString: currentNumberString)
        
        numberLabel.text = resultString
        
        
        

        
    }
    
    
    func showClick(nameButtom: String) -> Void {
        print("You Click ==> \(nameButtom)")
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

