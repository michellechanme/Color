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
        
        if sender.state == UIGestureRecognizerState.Ended {
            view.backgroundColor = randomColor
            
            var bgColor = self.view.backgroundColor?.rgb()
            
            

            println(self.view.backgroundColor?.rgb())
            
//            colorLabel.text = bgColor
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}

extension UIColor {
    
    func rgb() -> Int? {
        var fRed : CGFloat = 0
        var fGreen : CGFloat = 0
        var fBlue : CGFloat = 0
        var fAlpha: CGFloat = 0
        if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
            let iRed = Int(fRed * 255.0)
            let iGreen = Int(fGreen * 255.0)
            let iBlue = Int(fBlue * 255.0)
            let iAlpha = Int(fAlpha * 255.0)
            
            println(iRed)
            println(iGreen)
            println(iBlue)
            println(iAlpha)
            
            //  (Bits 24-31 are alpha, 16-23 are red, 8-15 are green, 0-7 are blue).
            let rgb = (iAlpha << 24) + (iRed << 16) + (iGreen << 8) + iBlue
            return rgb
        } else {
            // Could not extract RGBA components:
            return nil
        }
    }
}