//
//  ExperimentViewController.swift
//  Force_Password_Test_3
//
//  Created by JinHyuck Park on 2020/09/14.
//  Copyright © 2020 JinHyuck Park. All rights reserved.
//

import UIKit

class ExperimentViewController: UIViewController {
    
    @IBOutlet weak var SubjectName: UILabel!
    @IBOutlet weak var Button1: Button!
    @IBOutlet weak var Button2: Button!
    @IBOutlet weak var Button3: Button!
    @IBOutlet weak var Button4: Button!
    @IBOutlet weak var Button5: Button!
    @IBOutlet weak var Button6: Button!
    @IBOutlet weak var Button7: Button!
    @IBOutlet weak var Button8: Button!
    @IBOutlet weak var Button9: Button!
    @IBOutlet weak var Buttonstar: Button!
    @IBOutlet weak var Button0: Button!
    @IBOutlet weak var Buttonsharp: Button!
    @IBOutlet weak var SaveButton: UIButton!
    
    
    var SubjectName_String: String = ""
    var ForceValue_String: String = ""
    
    var file_count = 1
    var file_list : [Int] = []
    var file_list_end : [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        SubjectName.text = SubjectName_String
    }


    @IBAction func EndTouch1(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n1\n" + Button1.GetForceValues()
    }
    @IBAction func EndTouch2(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n2\n" + Button2.GetForceValues()
    }
    @IBAction func EndTouch3(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n3\n" + Button3.GetForceValues()
    }
    @IBAction func EndTouch4(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n4\n" + Button4.GetForceValues()
    }
    @IBAction func EndTouch5(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n5\n" + Button5.GetForceValues()
    }
    @IBAction func EndTouch6(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n6\n" + Button6.GetForceValues()
    }
    @IBAction func EndTouch7(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n7\n" + Button7.GetForceValues()
    }
    @IBAction func EndTouch8(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n8\n" + Button8.GetForceValues()
    }
    @IBAction func EndTouch9(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n9\n" + Button9.GetForceValues()
    }
    @IBAction func EndTouchstar(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n*\n" + Buttonstar.GetForceValues()
    }
    @IBAction func EndTouch0(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n0\n" + Button0.GetForceValues()
    }
    @IBAction func EndTouchsharp(_ sender: Button) {
        ForceValue_String = ForceValue_String + "\n#\n" + Buttonsharp.GetForceValues()
    }
    
    @IBAction func SaveValue(_ sender: UIButton) {
        print(ForceValue_String)
        readFile()
        writeFile(data: ForceValue_String, filename: SubjectName_String + "_" + String(file_count) +  ".txt")
        print(file_count)
        showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func writeFile(data: String, filename: String) {
        let filename = getDocumentsDirectory().appendingPathComponent(filename)
        do {
            try data.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readFile(){
        file_list.removeAll()
        // Get the document directory url
        let documentsUrl =  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

        do {
            // Get the directory contents urls (including subfolders urls)
            let directoryContents = try FileManager.default.contentsOfDirectory(at: documentsUrl, includingPropertiesForKeys: nil)

            // if you want to filter the directory contents you can do like this:
            let mp3Files = directoryContents.filter{ $0.pathExtension == "txt" }
            let mp3FileNames = mp3Files.map{ $0.deletingPathExtension().lastPathComponent }

            var Ascending = mp3FileNames.sorted(by: <)
            print(Ascending)
            print("------------------------")

            if !Ascending.isEmpty {
                for i in Ascending {
                    let a = i.components(separatedBy: "_")[0]
                    if a == SubjectName_String {
                        file_list.append(Int(i.components(separatedBy: "_")[1])!)
                    }
                }

                file_list_end = file_list.sorted()
                print(file_list_end)
                if !file_list_end.isEmpty {
                    let current = Int(file_list_end[file_list_end.count - 1])
                        print(current)
                    if current == file_count || file_count == 1{
                        file_count = current + 1
                    }
                }
            }

        } catch {
            print(error)
        }
    }
    
    func showToast(message : String, font: UIFont) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 190, y: self.view.frame.size.height-600, width: 100, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 3.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}
