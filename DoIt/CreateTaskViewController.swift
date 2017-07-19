//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Stephen Carras on 7/18/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet var importantSwitch: UIView!
    @IBOutlet var taskNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addTap(_ sender: Any) {
        let task = Task()
        task.name = taskNameTextField.text!
        
    }

}
