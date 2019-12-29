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
    @IBOutlet weak var One_Button: OneButton!
    @IBOutlet weak var Two_Button: TwoButton!
    @IBOutlet weak var Three_Button: ThreeButton!
    @IBOutlet weak var Four_Button: FourButton!
    @IBOutlet weak var Five_Button: FiveButton!
    @IBOutlet weak var Six_Button: SixButton!
    @IBOutlet weak var Seven_Button: SevenButton!
    @IBOutlet weak var Eight_Button: EightButton!
    @IBOutlet weak var Nine_Button: NineButton!
    @IBOutlet weak var Star_Button: StarButton!
    @IBOutlet weak var Zero_Button: ZeroButton!
    @IBOutlet weak var Sharp_Button: SharpButton!
    
    var SubjectInfomation_String: String = ""
    var SubjectName_String: String = ""
    var InputCount_String: String = ""
    var StayTime_String: String = ""
    
    var StartTime_TimeInterval: TimeInterval = 0
    var EndTime_TimeInterval: TimeInterval = 0
    var TimeDifference_Double: Double = 0.0
    var IsStart_Bool: Bool = true
    
    var CurrentInputCount_Int: Int = 0
    var ForceValuse_String: String = ""
    
    var file_count = 1
    var file_list : [String] = []
    var file_list_end : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        SubjectName_String = SubjectInfomation_String.components(separatedBy: "_")[0]
        InputCount_String = SubjectInfomation_String.components(separatedBy: "_")[1]
        StayTime_String = SubjectInfomation_String.components(separatedBy: "_")[2]
        PreviousInputCount_Label.text = InputCount_String
        PreviousStayTime_Label.text = StayTime_String
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
    }

    @IBAction func StartOneButton_Func(_ sender: OneButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndOneButton_Func(_ sender: OneButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += One_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartTwoButton_Func(_ sender: TwoButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndTwoButton_Func(_ sender: TwoButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Two_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartThreeButton_Func(_ sender: ThreeButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndThreeButton_Func(_ sender: ThreeButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Three_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartFourButton_Func(_ sender: FourButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndFourButton_Func(_ sender: FourButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Four_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartFiveButton_Func(_ sender: FiveButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndFiveButton_Func(_ sender: FiveButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Five_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartSixButton_Func(_ sender: SixButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndSixButton_Func(_ sender: SixButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Six_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartSevenButton_Func(_ sender: SevenButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndSevenButton_Func(_ sender: SevenButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Seven_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartEightButton_Func(_ sender: EightButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndEightButton_Func(_ sender: EightButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Eight_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartNineButton_Func(_ sender: NineButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndNineButton_Func(_ sender: NineButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Nine_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartStarButton_Func(_ sender: StarButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndStarButton_Func(_ sender: StarButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Star_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartZeroButton_Func(_ sender: ZeroButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndZeroButton_Func(_ sender: ZeroButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Zero_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
    }
    
    @IBAction func StartSharpButton_Func(_ sender: SharpButton) {
        if IsStart_Bool {
            StartTime_TimeInterval = Date.timeIntervalSinceReferenceDate
            IsStart_Bool = false
        }
    }
    
    @IBAction func EndSharpButton_Func(_ sender: SharpButton) {
        EndTime_TimeInterval = Date.timeIntervalSinceReferenceDate
        TimeDifference_Double = (EndTime_TimeInterval - StartTime_TimeInterval)
        if Int(InputCount_String)! > CurrentInputCount_Int {
            CurrentInputCount_Int += 1
            if TimeDifference_Double <= Double(StayTime_String)! {
                ForceValuse_String += Sharp_Button.GetForceValues()
                if Int(InputCount_String)! == CurrentInputCount_Int {
                    readFile()
                    writeFile(data: ForceValuse_String, filename: SubjectName_String + "_" + String(file_count) + ".txt")
                    showToast(message: "저장완료", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                }
            } else {
                showToast(message: "입력시간 초과", font: UIFont.systemFont(ofSize: UIFont.systemFontSize))
                CurrentInputCount_Int -= 1
            }
        }
        CurrentInputCount_Label.text = String(CurrentInputCount_Int)
        IsStart_Bool = true
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
                        file_list.append(i.components(separatedBy: "_")[1])
                    }
                }
                
                file_list_end = file_list.sorted()
                if !file_list_end.isEmpty {
                    let current = Int(file_list_end[file_list_end.count - 1])
                    //print(current)
                    if current != file_count || file_count == 1{
                        file_count = current! + 1
                    }
                }
            }
            
        } catch {
            print(error)
        }
    }
    
    func showToast(message : String, font: UIFont) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 190, y: self.view.frame.size.height-710, width: 100, height: 35))
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
