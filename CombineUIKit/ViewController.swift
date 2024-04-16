//
//  ViewController.swift
//  CombineUIKit
//
//  Created by asmaa gamal  on 16/04/2024.
//

import UIKit
import Combine
class ViewController: UIViewController ,UITableViewDataSource {
    let taskModel = TaskListModel()
    var subscriptions = Set<AnyCancellable>()
    @IBOutlet weak var addNewButton:UIButton!
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        taskModel.tasks.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell")!
        cell.textLabel?.text = taskModel.tasks.value[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        taskModel.tasks.sink{[unowned self] _ in
            self.tableView.reloadData()
        }.store(in: &subscriptions)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "goToAddNewItem" {
              if let destinationViewController = segue.destination as? AddNewItemViewController {
                  destinationViewController.taskModel = taskModel
              }
          }
      }

}

