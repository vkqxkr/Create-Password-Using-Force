//
//  ViewController.swift
//  Force_Password_Step_1
//
//  Created by JinHyuck Park on 2019/12/26.
//  Copyright © 2019 JinHyuck Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var SubjectName_TextField: UITextField!
    @IBOutlet weak var InputCount_TextField: UITextField!
    @IBOutlet weak var StayTime_TextField: UITextField!
    @IBOutlet weak var StartExperiment_Button: UIButton!
    
    var SubjectName_String: String = ""
    var InputCount_String: String = ""
    var StayTime_String: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SubjectName_TextField.returnKeyType = .done
        self.SubjectName_TextField.delegate = self
        InputCount_TextField.returnKeyType = .done
        self.InputCount_TextField.delegate = self
        StayTime_TextField.returnKeyType = .done
        self.StayTime_TextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        SubjectName_String = SubjectName_TextField.text ?? ""
        InputCount_String = InputCount_TextField.text ?? ""
        StayTime_String = StayTime_TextField.text ?? ""
        return false
    }
    
    @IBAction func StartExperiment_Func_StartExperiment_Button(_ sender: UIButton) {
        if SubjectName_String.count > 0 && SubjectName_String.trimmingCharacters(in: .whitespaces).isEmpty && InputCount_String.count > 0 && InputCount_String.trimmingCharacters(in: .whitespaces).isEmpty && StayTime_String.count > 0 && StayTime_String.trimmingCharacters(in: .whitespaces).isEmpty{
            self.performSegue(withIdentifier: "Main_to_Experiment", sender: SubjectName_String + "_" + InputCount_String + "_" + StayTime_String)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Main_to_Experiment" {
            let SecondViewController = segue.destination as! ViewController2
            SecondViewController.SubjectInfomation_String = SubjectName_String + "_" + InputCount_String + "_" + StayTime_String
        }
    }
}

