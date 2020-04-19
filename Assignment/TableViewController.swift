//
//  TableViewController.swift
//  Assignment
//
//  Created by Prabodh Mayekar on 19/04/20.
//  Copyright © 2020 Prabodh Mayekar. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{
    let list = ["Java","Swift","Python","Golang"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return cell;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
