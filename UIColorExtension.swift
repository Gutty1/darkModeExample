//
//  UIColor.swift
//
//
//

import UIKit
extension UIColor {
    
    ///Dark mode example
    class var backgroundCell: UIColor {
        return UIColor.init(light: UIColor(r: 192, g: 16, b: 57, alpha: 1.0), dark: UIColor(r: 192, g: 16, b: 57, alpha: 1.0))
    }
    
    class var rougeGradient: UIColor {
        return UIColor.init(light: UIColor(r: 192, g: 16, b: 57, alpha: 1.0), dark: UIColor(r: 192, g: 16, b: 57, alpha: 1.0))
    }
    
    class var royal: UIColor {
        return UIColor(r: 32, g: 108, b: 178, alpha: 1.0)
    }
    
    class var royalWithAlpha: UIColor {
        return UIColor(r: 32, g: 108, b: 178, alpha: 0.6)
    }
    
    class var sea: UIColor {
        return UIColor(r: 44, g: 129, b: 125, alpha: 1.0)
    }
    
    class var red: UIColor {
        return UIColor(r: 205, g: 18, b: 62, alpha: 1.0)
    }
    
    class var darkGreyBlue: UIColor {
        return UIColor(r: 53, g: 62, b: 89, alpha: 1.0)
    }
    
    class var pinkishRedGradient: UIColor {
        return UIColor(r: 220, g: 18, b: 35, alpha: 1.0)
    }
    
    class var tomatoGradient: UIColor {
        return UIColor(r: 224, g: 42, b: 25, alpha: 1.0)
    }
    
    class var veryLightPink: UIColor {
        return UIColor(r: 145, g: 145, b: 145, alpha: 1.0)
    }
    
    class var black21: UIColor {
        return UIColor(r: 0, g: 0, b: 0, alpha: 0.21)
    }

    class var disabledButtonFont: UIColor {
        return UIColor(r: 108, g: 108, b: 108, alpha: 1.0)
    }
    
    class var greyishFont: UIColor {
        return UIColor(r: 82, g: 82, b: 82, alpha: 1.0)
    }
    
    class var emerald: UIColor {
        return UIColor(r: 0, g: 158, b: 79, alpha: 1.0)
    }
    
    class var lipstick: UIColor {
        return UIColor(r: 240, g: 0, b: 11, alpha: 1.0)
    }
    
    class var marine: UIColor {
        return UIColor(r: 3, g: 41, b: 76, alpha: 1.0)
    }
    
    
    // MARK: - Help Functions
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: alpha)
    }
    
    ///support dark mode
    convenience init(light: UIColor, dark: UIColor) {
        
        if #available(iOS 13.0, *) {
            self.init { traitCollection in
                if traitCollection.userInterfaceStyle == .dark {
                    return dark
                }
                return light
            }
        } else {
            self.init(cgColor: light.cgColor)
        }
    }
}
