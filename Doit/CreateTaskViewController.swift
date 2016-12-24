//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by Toshimitsu Kugimoto on 2016/12/24.
//  Copyright © 2016 Toshimitsu Kugimoto. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        let task = Task()
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        
        // Add new task to array in previous view controller
        
        previousVC.tasks.append(task)
        
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

    

}
