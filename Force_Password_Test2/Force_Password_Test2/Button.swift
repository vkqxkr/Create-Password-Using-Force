//
//  Button.swift
//  Force_Password_Step_1
//
//  Created by JinHyuck Park on 2019/12/30.
//  Copyright © 2019 JinHyuck Park. All rights reserved.
//

import UIKit

class Button: UIButton {
    var ForceValues_String: String = ""
    
    required init(coder aDecoder: NSCoder){ super.init(coder: aDecoder)!
        self.layer.cornerRadius = self.layer.frame.size.width/2
        self.backgroundColor = UIColor.gray
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.backgroundColor = UIColor.green
        self.setTitleColor(UIColor.green, for: .normal)
        ForceValues_String = ""
        if let touch = touches.first {
            if #available(iOS 9.0, *) {
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
                    let force = touch.force/touch.maximumPossibleForce
                    ForceValues_String = ForceValues_String + force.description + "\n"
                }
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        self.backgroundColor = UIColor.green
        if let touch = touches.first {
            if #available(iOS 9.0, *) {
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
                    let force = touch.force/touch.maximumPossibleForce
                    ForceValues_String = ForceValues_String + force.description + "\n"
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        self.backgroundColor = UIColor.gray
    }
    
    func GetForceValues()-> String {
        return ForceValues_String
    }
}

