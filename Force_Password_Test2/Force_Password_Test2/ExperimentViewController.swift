//
//  ExperimentViewController.swift
//  Force_Password_Test2
//
//  Created by JinHyuck Park on 2020/09/14.
//  Copyright © 2020 JinHyuck Park. All rights reserved.
//

import UIKit

class ExperimentViewController: UIViewController {
    
    @IBOutlet weak var SubjectName: UILabel!
    @IBOutlet weak var ForceButton: Button!
    
    var SubjectName_String: String = ""
    var ForceValue_String: String = ""
    
    var file_count = 1
    var file_list : [Int] = []
    var file_list_end : [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SubjectName.text = SubjectName_String
    }
    
    @IBAction func EndTouch(_ sender: Button) {
        ForceValue_String = ForceButton.GetForceValues()
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

