//
//  EmployeeTypeTableViewController.swift
//  EmployeeRoster
//
//  Created by shark boy on 10/29/23.
//

import UIKit


protocol EmployeeTypeTableViewControllerDelegate: EmployeeDetailTableViewController {

    
    func employeeTypeTableViewController(_:EmployeeTypeTableViewController, didSelect:EmployeeType) // hehe just took 40 min re-learning something I already knew... We call those reps baybeeee
    
    
}



class EmployeeTypeTableViewController: UITableViewController {
    
    var delegate: EmployeeTypeTableViewControllerDelegate?
    
    var employeeType: EmployeeType?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EmployeeType.allCases.count // l.o.l
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeType", for: indexPath)
        let type = EmployeeType.allCases[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = type.description
        cell.contentConfiguration = content
        
        if employeeType == type {
        cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }

        // Configure the cell...

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        employeeType = EmployeeType.allCases[indexPath.row]
        
//        delegate?.employeeTypeTableViewController(EmployeeTypeTableViewController, didSelect: employeeType)
        
        
        
        
        
        tableView.reloadData()
         
    }
    
    
}

