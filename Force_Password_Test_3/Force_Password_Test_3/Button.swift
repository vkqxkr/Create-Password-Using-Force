//
//  Button.swift
//  Force_Password_Test_3
//
//  Created by JinHyuck Park on 2020/09/14.
//  Copyright © 2020 JinHyuck Park. All rights reserved.
//

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
        self.layer.cornerRadius = self.frame.width/2
        self.backgroundColor = UIColor.gray
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.backgroundColor = UIColor.green
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
        print(ForceValues_String)
        self.backgroundColor = UIColor.gray
    }
    
    func GetForceValues()-> String {
        return ForceValues_String
    }
}


