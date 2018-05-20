//
//  ViewController.swift
//  FunnyNumber
//
//  Created by PDcode MacbookPRO on 20/5/2561 BE.
//  Copyright © 2561 PDcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    เริ่มตรงนี้
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func decBtn(_ sender: UIBarButtonItem) {
        showClick(nameButtom: "decBtn")
        
    }
    
    
    @IBAction func startOneBtn(_ sender: UIBarButtonItem) {
        showClick(nameButtom: "startOne")
    }
    
    
    @IBAction func incBtn(_ sender: UIBarButtonItem) {
        showClick(nameButtom: "incBtn")
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

