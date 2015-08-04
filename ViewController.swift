//
//  ViewController.swift
//  Color
//
//  Created by Michelle Chan on 8/3/15.
//  Copyright (c) 2015 Michelle Chan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let colorWheel = ColorWheel()
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBAction func panGesture(sender: UIPanGestureRecognizer) {
        var randomColor = colorWheel.randomColor()
        let rgb = randomColor.rgb()
        let rgbString = "\(rgb.0), \(rgb.1), \(rgb.2)"
        
        if sender.state == UIGestureRecognizerState.Ended {
            view.backgroundColor = randomColor
            
            let bgColor = self.view.backgroundColor?.rgb()
            let RGBtoString = String(stringInterpolationSegment: bgColor)
            let filterRGB = sanitizeRGB(RGBtoString)
            println(filterRGB)
            
            colorLabel.text = "RGB: \(filterRGB)"
        }
    }
    
    func sanitizeRGB(unfilteredNum: String) -> String {
        let acceptedChars = NSCharacterSet(charactersInString: ", 1234567890")
        var filteredNum = String()
        for char in unfilteredNum.utf16 {
            if acceptedChars.characterIsMember(char) {
                filteredNum.append(UnicodeScalar(char))
            }
        }
        return filteredNum
    }
    
    //    func RGBtoHex() {
    //        let hexValue = String(format:"%02X", Int(iRed)) + String(format:"%02X", Int(iGreen)) + String(format:"%02X", Int(iBlue))
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }
    
    override func viewWillDisappear(animated: Bool) {
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
    }
}

// Converts RGB percents to RGB decimals

extension UIColor {
    
    func rgb() -> (Int, Int, Int) {
        var fRed : CGFloat = 0
        var fGreen : CGFloat = 0
        var fBlue : CGFloat = 0
        var fAlpha: CGFloat = 0
        if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
            let iRed = Int(fRed * 255.0)
            let iGreen = Int(fGreen * 255.0)
            let iBlue = Int(fBlue * 255.0)
            let iAlpha = Int(fAlpha * 255.0)
            
            return (iRed, iGreen, iBlue)
        } else {
            // Could not extract RGBA components:
            fatalError("COULD NOT CONVERT COLOR")
        }
    }
}

extension UIColor {

    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        
        var hex = NSString(format:"#%06x", rgb) as String
        println()
        
        return NSString(format:"#%06x", rgb) as String
    }
}