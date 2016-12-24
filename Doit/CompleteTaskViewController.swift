//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by Toshimitsu Kugimoto on 2016/12/24.
//  Copyright © 2016 Toshimitsu Kugimoto. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task = Task()
    var previousVC = TasksViewController()

    @IBOutlet weak var taskLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
