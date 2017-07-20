//
//  SingleClassViewController.swift
//  DoIt
//
//  Created by Stephen Carras on 7/19/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import UIKit

class SingleTaskViewController: UIViewController {

    @IBOutlet weak var taskNameLabel: UILabel!
    var task : Task? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task!.important {
        taskNameLabel.text = task!.name! + "❗"
        } else {
            taskNameLabel.text = task!.name!
            
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func completeTask(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
        
    }
    
}
