//
//  MyClass.swift
//  FunnyNumber
//
//  Created by PDcode MacbookPRO on 20/5/2561 BE.
//  Copyright © 2561 PDcode. All rights reserved.
//

import Foundation

class MyClass {
    
    func decreseNumber(numberInt: Int) -> Int {
        
        let resultInt: Int = numberInt - 1
        
        return resultInt
        
    }
    
//    เปลี่ยนจากการ ส่งแบบ Int เป็น String แล้วไปเป็น Int แล้วไปเป็น String
//    ส่วนด้านล่าง ส่งแบบ String เป็น String
    
    func increaseNumber(numberString: String) ->String {
        var numberInt: Int = Int(numberString)!
        numberInt = numberInt + 1
        let numberString: String = String(numberInt)
        
        
        return numberString
    }
    
    func startOne() -> String {
        return "1"
    
        
     }

    
} //My Class
