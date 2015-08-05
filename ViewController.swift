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
    @IBOutlet weak var rgbLabel: UILabel!
    @IBOutlet weak var hexLabel: UILabel!
    @IBOutlet weak var swipeLabel: UILabel!
    
    @IBAction func panGesture(sender: UIPanGestureRecognizer) {
        if sender.state == UIGestureRecognizerState.Ended {
            changeColor()
            swipeLabel.hidden = true
        }
    }
    
    private func changeColor() {
        var randomColor = colorWheel.randomColor()
        let rgb = randomColor.rgb()
        let rgbString = "\(rgb.0), \(rgb.1), \(rgb.2)"
        
        view.backgroundColor = randomColor
        
        let bgColor = self.view.backgroundColor?.rgb()
        
        let RGBtoString = String(stringInterpolationSegment: bgColor)
        let filterRGB = sanitizeRGB(RGBtoString)
        
        let hexString = self.view.backgroundColor?.toHexString()
        let filterHex = sanitizeHEX(hexString!)
        
        rgbLabel.text = "RGB: \(filterRGB)"
        hexLabel.text = "Hex: \(filterHex)"
        
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
    
    func sanitizeHEX(unfilteredNum: String) -> String {
        let acceptedChars = NSCharacterSet(charactersInString: "#1234567890abcdefghijklmnopqrstuvwxyz")
        var filteredHex = String()
        for char in unfilteredNum.utf16 {
            if acceptedChars.characterIsMember(char) {
                filteredHex.append(UnicodeScalar(char))
            }
        }
        return filteredHex
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        changeColor()
        
    }
    
    override func viewWillAppear(animated: Bool) {
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
        
        return NSString(format:"#%06x", rgb) as String
    }
}

extension UIView {
    func fadeIn(duration: NSTimeInterval = 1.0, delay: NSTimeInterval = 0.0, completion: ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animateWithDuration(duration, delay: delay, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.alpha = 1.0
            }, completion: completion)  }
    
    func fadeOut(duration: NSTimeInterval = 1.0, delay: NSTimeInterval = 0.0, completion: (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animateWithDuration(duration, delay: delay, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.alpha = 0.0
            }, completion: completion)
    }
}