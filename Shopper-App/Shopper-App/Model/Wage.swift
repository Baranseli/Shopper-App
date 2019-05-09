//
//  Wage.swift
//  Shopper-App
//
//  Created by Kafkas Baranseli on 10/05/2019.
//  Copyright © 2019 Baranseli. All rights reserved.
//

import Foundation
// 010 go to blue app icon (Shopper-App) than Editor, Add Target, select iOS Unit Testing Bundle.
// 011 create this model folder and create this new file as swift.
// 012 cleate a nested classes as below

class Wage {
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))   // ceil for rounding  UP (to bigger) a number. Than go to Shopper-AppTests
    }
}
