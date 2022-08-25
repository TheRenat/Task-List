//
//  TaskListViewController.swift
//  Task List
//
//  Created by Renat Ibragimov on 25.08.2022.
//

import UIKit

class TaskListViewController: UITableViewController {
    
    var taskList: TaskList!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = taskList.name
        
        let addButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addButtonPressed)
        )
        navigationItem.rightBarButtonItem = [addButton, editButtonItem]
    }
    
    //MARK: Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        section == 0 ? "Current Tasks" : "Complete Tasks"
    }
    
}
