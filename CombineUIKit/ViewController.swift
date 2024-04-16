//
//  ViewController.swift
//  CombineUIKit
//
//  Created by asmaa gamal  on 16/04/2024.
//

import UIKit

class ViewController: UIViewController , UIApplicationDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

