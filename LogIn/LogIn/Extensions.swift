import Foundation
import UIKit

extension UIColor {
    
    //Color principal de la app
    class func mainColor() -> UIColor {
        return UIColor(red:0.2, green:0.3, blue:0.9, alpha:1.0)
    }
    
    class func secondColor() -> UIColor {
        return UIColor(red:0.1, green:0.2, blue: 0.8, alpha: 0.95)
    }
    
    class func accentColor() -> UIColor {
        return UIColor(red:0.9, green: 0.8, blue: 0.2, alpha: 1.0)
    }
}
