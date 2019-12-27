//
//  ViewController2.swift
//  Force_Password_Step_1
//
//  Created by JinHyuck Park on 2019/12/27.
//  Copyright © 2019 JinHyuck Park. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var PreviousInputCount_Label: UILabel!
    @IBOutlet weak var PreviousStayTime_Label: UILabel!
    @IBOutlet weak var CurrentInputCount_Label: UILabel!
    @IBOutlet weak var One_Button: Button!
    @IBOutlet weak var Two_Button: Button!
    
    var SubjectInfomation_String: String = ""
    var SubjectName_String: String = ""
    var InputCount_String: String = ""
    var StayTime_String: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
