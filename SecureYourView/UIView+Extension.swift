//
//  UIView+Extension.swift
//  SecureYourView
//
//  Created by Sreekuttan D on 02/06/23.
//

import Foundation
import UIKit

extension UIView {
    
    @discardableResult func makeSecure() -> UITextField {
        
        let field = UITextField()
        DispatchQueue.main.async {
            field.isSecureTextEntry = true
            self.addSubview(field)
            field.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            field.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            self.layer.superlayer?.addSublayer(field.layer)
            field.layer.sublayers?.first?.addSublayer(self.layer)
        }
        return field
    }
}
