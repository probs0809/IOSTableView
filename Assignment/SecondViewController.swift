//
//  SecondViewController.swift
//  Assignment
//
//  Created by Prabodh Mayekar on 17/04/20.
//  Copyright © 2020 Prabodh Mayekar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var output: UILabel!
    var str: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        output.text = str
        
    }
}
