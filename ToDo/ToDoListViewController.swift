//
//  ViewController.swift
//  ToDo
//
//  Created by Burak Firik on 12/25/17.
//  Copyright © 2017 Burak Firik. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

  let itemArray = ["Find Mike", "Buy Eggs", "Destroy Demog"]
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    
  }
  
  // MARK - Tableview Datasource Methods
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return itemArray.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
    cell.textLabel?.text = itemArray[indexPath.row]
    
    return cell
  }
  
  // MARK - Tableview Delegate method
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    
    
    if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
       tableView.cellForRow(at: indexPath)?.accessoryType = .none
    } else {
       tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    
    tableView.deselectRow(at: indexPath, animated: true)
    
    
  }

}

