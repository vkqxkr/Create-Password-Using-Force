//
//  Button.swift
//  Force_Password_Step_1
//
//  Created by JinHyuck Park on 2019/12/30.
//  Copyright © 2019 JinHyuck Park. All rights reserved.
//

import UIKit

class FourButton: UIButton {
    var ForceValues_String: String = "Push 4\n"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        ForceValues_String = "Push 4\n"
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
    }
    
    func GetForceValues()-> String {
        return ForceValues_String
    }
}

