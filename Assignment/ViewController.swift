//
//  ViewController.swift
//  Assignment
//
//  Created by Prabodh Mayekar on 17/04/20.
//  Copyright © 2020 Prabodh Mayekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var number_1: UITextField! // Create outlet for the TextField 1
    @IBOutlet weak var number_2: UITextField! // Create outlet for the TextField 2
    @IBOutlet weak var output: UILabel!       // Create outlet for the lable to show result
    
    var mtData:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// The following function will be executed on touch event of "Show result button"
    @IBAction func calculate(_ sender: Any) {
        let num1:Double = (number_1.text! as NSString).doubleValue
        let num2:Double = (number_2.text! as NSString).doubleValue
        
        if num1 != 0 || num2 != 0 {
            mtData = "\(num1+num2) is \(Int(num1+num2)%2 == 0 ? "even" : "odd")"
            output.text = mtData
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "myidentifier" {
            let vc = segue.destination as! SecondViewController
            vc.str = mtData
        }
    }
    
    
}

