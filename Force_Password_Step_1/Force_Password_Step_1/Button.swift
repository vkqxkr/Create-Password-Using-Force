//
//  Button.swift
//  Force_Password_Step_1
//
//  Created by JinHyuck Park on 2019/12/27.
//  Copyright © 2019 JinHyuck Park. All rights reserved.
//

import UIKit

class Button: UIButton {
    var startTime: TimeInterval = 0
    var currentTime: TimeInterval = 0
    var previous_Time: Double = 0.0
    var begin_time: TimeInterval = 0
    var finish_Time: TimeInterval = 0
    var temp_Time: TimeInterval = 0
    var button = ""
    var temp_Button = ""
    var temp_State_Button = ""
    var max_force: CGFloat = 0.0
    var temp_Force: CGFloat = 0.0
    var temp_State_Force: CGFloat = 0.0
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        startTime = 0
        currentTime = 0
        previous_Time = 0.0
        button = ""
        if let touch = touches.first {
            if #available(iOS 9.0, *) {
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
                    startTime = Date.timeIntervalSinceReferenceDate
                    let force = touch.force/touch.maximumPossibleForce
                    if force > max_force {
                        max_force = force
                    }
                    if force < 0.2 {
                        self.backgroundColor = UIColor.gray;
                    } else if force < 0.6 {
                        self.backgroundColor = UIColor.purple;
                    } else if force < 1.0 {
                        self.backgroundColor = UIColor.blue;
                    } else {
                        self.backgroundColor = UIColor.black
                    }
                }
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        if let touch = touches.first {
            if #available(iOS 9.0, *) {
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
                    currentTime = Date.timeIntervalSinceReferenceDate
                    previous_Time = startTime
                    let force = touch.force/touch.maximumPossibleForce
                    
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
    }
}


