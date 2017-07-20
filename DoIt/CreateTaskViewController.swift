//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Stephen Carras on 7/18/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBOutlet weak var realTaskNameField: UITextField!
    @IBOutlet weak var realImportantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addTap(_ sender: Any) {
        
       let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        
        let task = Task(context: context)
        
        task.name = realTaskNameField.text!
        task.important = realImportantSwitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        navigationController!.popViewController(animated: true)
        
    }

}
