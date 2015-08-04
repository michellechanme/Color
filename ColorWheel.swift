//
//  ColorWheelViewController.swift
//  PrettyColors
//
//  Created by Michelle Chan on 8/3/15.
//  Copyright (c) 2015 Michelle Chan. All rights reserved.
//

import Foundation
import UIKit

struct ColorWheel {
    let colorsArray = [
        UIColor(red: 29/255.0, green: 209/255.0, blue: 174/255.0, alpha: 1.0), // lighter teal color
        UIColor(red: 22/255.0, green: 160/255.0, blue: 133/255.0, alpha: 1.0), // darker teal color color
        UIColor(red: 42/255.0, green: 204/255.0, blue: 114/255.0, alpha: 1.0), // lighter green color
        UIColor(red: 39/255.0, green: 174/255.0, blue: 96/255.0, alpha: 1.0), // darker green color
        UIColor(red: 52/255.0, green: 152/255.0, blue: 219/255.0, alpha: 1.0), // lighter blue color
        UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0), // darker blue color
        UIColor(red: 155/255.0, green: 89/255.0, blue: 182/255.0, alpha: 1.0), // lighter purple color
        UIColor(red: 142/255.0, green: 68/255.0, blue: 173/255.0, alpha: 1.0), // darker purple color
        UIColor(red: 52/255.0, green: 73/255.0, blue: 94/255.0, alpha: 1.0), // lighter navy color
        UIColor(red: 44/255.0, green: 62/255.0, blue: 80/255.0, alpha: 1.0), // darker navy color
        UIColor(red: 241/255.0, green: 196/255.0, blue: 15/255.0, alpha: 1.0), // yellow color
        UIColor(red: 243/255.0, green: 156/255.0, blue: 18/255.0, alpha: 1.0), // lighter orange color
        UIColor(red: 230/255.0, green: 126/255.0, blue: 24/255.0, alpha: 1.0), // medium orange color
        UIColor(red: 211/255.0, green: 84/255.0, blue: 0/255.0, alpha: 1.0), // dark orange color
        UIColor(red: 231/255.0, green: 76/255.0, blue: 60/255.0, alpha: 1.0), // lighter red color
        UIColor(red: 192/255.0, green: 57/255.0, blue: 43/255.0, alpha: 1.0), // darker red color
        UIColor(red: 149/255.0, green: 165/255.0, blue: 166/255.0, alpha: 1.0), // lighter grey color
        UIColor(red: 127/255.0, green: 140/255.0, blue: 141/255.0, alpha: 1.0), // daker grey color
    ]
    
    func randomColor() -> UIColor {
        var unsignedArrayCount = UInt32(colorsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return colorsArray[randomNumber]
    }
}