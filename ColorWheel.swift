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
        // flatness
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
        
        // others
        UIColor(red: 219/255.0, green: 97/255.0, blue: 97/255.0, alpha: 1.0),
        UIColor(red: 208/255.0, green: 196/255.0, blue: 248/255.0, alpha: 1.0),
        UIColor(red: 206/255.0, green: 130/255.0, blue: 248/255.0, alpha: 1.0),
        UIColor(red: 168/255.0, green: 125/255.0, blue: 232/255.0, alpha: 1.0),
        UIColor(red: 133/255.0, green: 195/255.0, blue: 239/255.0, alpha: 1.0),
        UIColor(red: 118/255.0, green: 142/255.0, blue: 113/255.0, alpha: 1.0),
        UIColor(red: 98/255.0, green: 139/255.0, blue: 157/255.0, alpha: 1.0),
        UIColor(red: 127/255.0, green: 59/255.0, blue: 196/255.0, alpha: 1.0),
        UIColor(red: 167/255.0, green: 88/255.0, blue: 88/255.0, alpha: 1.0),
        UIColor(red: 205/255.0, green: 86/255.0, blue: 135/255.0, alpha: 1.0),
        UIColor(red: 55/255.0, green: 200/255.0, blue: 169/255.0, alpha: 1.0),
        UIColor(red: 228/255.0, green: 208/255.0, blue: 27/255.0, alpha: 1.0),
        UIColor(red: 18/255.0, green: 219/255.0, blue: 237/255.0, alpha: 1.0),
        UIColor(red: 45/255.0, green: 210/255.0, blue: 163/255.0, alpha: 1.0),
        UIColor(red: 79/255.0, green: 171/255.0, blue: 145/255.0, alpha: 1.0),
        UIColor(red: 60/255.0, green: 195/255.0, blue: 123/255.0, alpha: 1.0),
        UIColor(red: 69/255.0, green: 186/255.0, blue: 122/255.0, alpha: 1.0),
        UIColor(red: 108/255.0, green: 147/255.0, blue: 147/255.0, alpha: 1.0),
        UIColor(red: 62/255.0, green: 154/255.0, blue: 193/255.0, alpha: 1.0),
        UIColor(red: 77/255.0, green: 179/255.0, blue: 122/255.0, alpha: 1.0),
        UIColor(red: 173/255.0, green: 92/255.0, blue: 82/255.0, alpha: 1.0),
        UIColor(red: 60/255.0, green: 168/255.0, blue: 195/255.0, alpha: 1.0),
        UIColor(red: 152/255.0, green: 107/255.0, blue: 103/255.0, alpha: 1.0),
        UIColor(red: 74/255.0, green: 181/255.0, blue: 179/255.0, alpha: 1.0),
        UIColor(red: 253/255.0, green: 237/255.0, blue: 165/255.0, alpha: 1.0),
        UIColor(red: 132/255.0, green: 171/255.0, blue: 205/255.0, alpha: 1.0),
        UIColor(red: 89/255.0, green: 125/255.0, blue: 113/255.0, alpha: 1.0),
        UIColor(red: 187/255.0, green: 173/255.0, blue: 225/255.0, alpha: 1.0),
        UIColor(red: 130/255.0, green: 149/255.0, blue: 106/255.0, alpha: 1.0),
        UIColor(red: 116/255.0, green: 139/255.0, blue: 137/255.0, alpha: 1.0),
        UIColor(red: 208/255.0, green: 225/255.0, blue: 245/255.0, alpha: 1.0),
        UIColor(red: 143/255.0, green: 185/255.0, blue: 70/255.0, alpha: 1.0),
        UIColor(red: 61/255.0, green: 192/255.0, blue: 194/255.0, alpha: 1.0),
        UIColor(red: 41/255.0, green: 214/255.0, blue: 182/255.0, alpha: 1.0),
        UIColor(red: 177/255.0, green: 47/255.0, blue: 67/255.0, alpha: 1.0),
        UIColor(red: 247/255.0, green: 110/255.0, blue: 113/255.0, alpha: 1.0),
        UIColor(red: 187/255.0, green: 126/255.0, blue: 68/255.0, alpha: 1.0),
        UIColor(red: 56/255.0, green: 168/255.0, blue: 88/255.0, alpha: 1.0),
        UIColor(red: 139/255.0, green: 162/255.0, blue: 162/255.0, alpha: 1.0),
        UIColor(red: 47/255.0, green: 81/255.0, blue: 80/255.0, alpha: 1.0),
        UIColor(red: 250/255.0, green: 181/255.0, blue: 5/255.0, alpha: 1.0),
        UIColor(red: 145/255.0, green: 162/255.0, blue: 93/255.0, alpha: 1.0),
        UIColor(red: 217/255.0, green: 171/255.0, blue: 237/255.0, alpha: 1.0),
        UIColor(red: 169/255.0, green: 194/255.0, blue: 61/255.0, alpha: 1.0),
        UIColor(red: 119/255.0, green: 101/255.0, blue: 154/255.0, alpha: 1.0),
        UIColor(red: 40/255.0, green: 215/255.0, blue: 113/255.0, alpha: 1.0),
        UIColor(red: 155/255.0, green: 77/255.0, blue: 179/255.0, alpha: 1.0),
        UIColor(red: 176/255.0, green: 81/255.0, blue: 79/255.0, alpha: 1.0),
        UIColor(red: 164/255.0, green: 91/255.0, blue: 91/255.0, alpha: 1.0),
        UIColor(red: 24/255.0, green: 13/255.0, blue: 104/255.0, alpha: 1.0),
        UIColor(red: 27/255.0, green: 218/255.0, blue: 228/255.0, alpha: 1.0),
        UIColor(red: 76/255.0, green: 144/255.0, blue: 92/255.0, alpha: 1.0),
        UIColor(red: 99/255.0, green: 83/255.0, blue: 172/255.0, alpha: 1.0),
        UIColor(red: 192/255.0, green: 42/255.0, blue: 203/255.0, alpha: 1.0),
        UIColor(red: 189/255.0, green: 66/255.0, blue: 105/255.0, alpha: 1.0),
        UIColor(red: 144/255.0, green: 61/255.0, blue: 194/255.0, alpha: 1.0),
        UIColor(red: 211/255.0, green: 211/255.0, blue: 49/255.0, alpha: 1.0),
        UIColor(red: 25/255.0, green: 221/255.0, blue: 235/255.0, alpha: 1.0),
        UIColor(red: 82/255.0, green: 62/255.0, blue: 193/255.0, alpha: 1.0),
        UIColor(red: 118/255.0, green: 170/255.0, blue: 75/255.0, alpha: 1.0),
        UIColor(red: 89/255.0, green: 166/255.0, blue: 133/255.0, alpha: 1.0),
        UIColor(red: 105/255.0, green: 136/255.0, blue: 150/255.0, alpha: 1.0),
        UIColor(red: 167/255.0, green: 88/255.0, blue: 155/255.0, alpha: 1.0),
        UIColor(red: 27/255.0, green: 158/255.0, blue: 228/255.0, alpha: 1.0),
        UIColor(red: 219/255.0, green: 184/255.0, blue: 209/255.0, alpha: 1.0),
        UIColor(red: 254/255.0, green: 187/255.0, blue: 1/255.0, alpha: 1.0),
        UIColor(red: 93/255.0, green: 114/255.0, blue: 162/255.0, alpha: 1.0),
        UIColor(red: 136/255.0, green: 226/255.0, blue: 155/255.0, alpha: 1.0),
        UIColor(red: 144/255.0, green: 99/255.0, blue: 156/255.0, alpha: 1.0),
        UIColor(red: 240/255.0, green: 191/255.0, blue: 15/255.0, alpha: 1.0),
        UIColor(red: 92/255.0, green: 105/255.0, blue: 163/255.0, alpha: 1.0),
        UIColor(red: 205/255.0, green: 125/255.0, blue: 50/255.0, alpha: 1.0),
        UIColor(red: 191/255.0, green: 189/255.0, blue: 64/255.0, alpha: 1.0),
        UIColor(red: 50/255.0, green: 125/255.0, blue: 205/255.0, alpha: 1.0),
        UIColor(red: 244/255.0, green: 130/255.0, blue: 16/255.0, alpha: 1.0),
        UIColor(red: 226/255.0, green: 238/255.0, blue: 229/255.0, alpha: 1.0),
        UIColor(red: 142/255.0, green: 127/255.0, blue: 113/255.0, alpha: 1.0),
        UIColor(red: 60/255.0, green: 205/255.0, blue: 200/255.0, alpha: 1.0),
        UIColor(red: 70/255.0, green: 195/255.0, blue: 122/255.0, alpha: 1.0),
        UIColor(red: 91/255.0, green: 164/255.0, blue: 147/255.0, alpha: 1.0),
        UIColor(red: 94/255.0, green: 130/255.0, blue: 161/255.0, alpha: 1.0),
        UIColor(red: 196/255.0, green: 88/255.0, blue: 64/255.0, alpha: 1.0),
        UIColor(red: 79/255.0, green: 176/255.0, blue: 176/255.0, alpha: 1.0)
    ]
    
    func randomColor() -> UIColor {
        var unsignedArrayCount = UInt32(colorsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return colorsArray[randomNumber]
    }
}