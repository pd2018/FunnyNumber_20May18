//
//  ThaiNumberViewController.swift
//  FunnyNumber
//
//  Created by PDcode MacbookPRO on 20/5/2561 BE.
//  Copyright © 2561 PDcode. All rights reserved.
//

import UIKit

class ThaiNumberViewController: UIViewController {
    
//    Implicit
    var thaiClass = ThaiClass()
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func decBtn(_ sender: UIBarButtonItem) {
        
        let reultString: String = thaiClass.checkClick(keyString: "Dec")
        print(reultString)
        
        var decIndexInt = thaiClass.indexInt
        decIndexInt = decIndexInt - 1
        if decIndexInt < 0 {
            decIndexInt = thaiClass.numberStrings.count - 1
            
        }
       thaiClass.indexInt = decIndexInt
        print("Current index ==> \(thaiClass.indexInt)")
        numberLabel.text = thaiClass.showNumber()
    }
    
    
    
    @IBAction func setOne(_ sender: UIBarButtonItem) {
        print(thaiClass.checkClick(keyString: "One"))
        
        thaiClass.indexInt = 0
        numberLabel.text = thaiClass.showNumber()
    }
    
    
    @IBAction func incBtn(_ sender: UIBarButtonItem) {
        print(thaiClass.checkClick(keyString: "Inc"))
        var incNumberInt = thaiClass.indexInt
        incNumberInt = incNumberInt + 1
        if incNumberInt > (thaiClass.numberStrings.count - 1) {
            incNumberInt = 0
        }
       thaiClass.indexInt = incNumberInt
        print("Current index ==> \(thaiClass.indexInt)")
        
        numberLabel.text = thaiClass.showNumber()
        
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

} // ThaiNumber Class
