//
//  ViewController.swift
//  Force_Password_Test2
//
//  Created by JinHyuck Park on 2020/09/14.
//  Copyright © 2020 JinHyuck Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var SubjectName: UITextField!
    @IBOutlet weak var StartExperiment: UIButton!
    
    var SubjectName_String: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SubjectName.returnKeyType = .done
        self.SubjectName.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        SubjectName_String = SubjectName.text ?? ""
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "Main_to_Experiment" {
        let secondViewController = segue.destination as! ExperimentViewController
        secondViewController.SubjectName_String = SubjectName_String
        }
    }
}

