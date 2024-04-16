//
//  AddNewItemViewController.swift
//  CombineUIKit
//
//  Created by asmaa gamal  on 16/04/2024.
//

import UIKit
import Combine
class AddNewItemViewController: UIViewController {
    var taskModel: TaskListModel?
//    var subscriptions = Set<AnyCancellable>()
    var text = ""
    @IBOutlet weak var textFiled : UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFiled.addTarget(self, action: #selector(updateText), for: .editingChanged)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddNew(_ sender: UIButton) {
        print("tappppppped")
        taskModel?.addNewTask.send(text)
        dismiss(animated: true, completion: nil)
    }
//    @IBAction func addNew(_ sender: UIButton) {
//        
//           guard let taskModel = taskModel else {
//               return
//           }
//        
//           taskModel.addNewTask.send(text)
//           dismiss(animated: true, completion: nil)
//       }
    @objc func updateText(){
        
        self.text = textFiled.text ?? ""
        
    }
    func dismiss(){
        self.dismiss(animated: true ,completion: nil)
    }
    @IBAction func cancel(_ sender: UIButton){
        print("tappppppped")
       dismiss()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
