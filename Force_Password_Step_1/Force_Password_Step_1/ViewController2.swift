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
    @IBOutlet weak var One_Button: UIButton!
    @IBOutlet weak var Two_Button: UIButton!
    @IBOutlet weak var Three_Button: UIButton!
    @IBOutlet weak var Four_Button: UIButton!
    @IBOutlet weak var FIve_Button: UIButton!
    @IBOutlet weak var Six_Button: UIButton!
    @IBOutlet weak var Seven_Button: UIButton!
    @IBOutlet weak var Eight_Button: UIButton!
    @IBOutlet weak var Nine_Button: UIButton!
    @IBOutlet weak var Star_Button: UIButton!
    @IBOutlet weak var Zero_Button: UIButton!
    @IBOutlet weak var Sharp_Button: UIButton!
    
    var SubjectInfomation_String: String = ""
    var SubjectName_String: String = ""
    var InputCount_String: String = ""
    var StayTime_String: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
