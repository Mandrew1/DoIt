//
//  ViewController.swift
//  DoIt
//
//  Created by Stephen Carras on 7/18/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = createTask()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
        cell.textLabel?.text = task.name + "❗"
        } else {
            cell.textLabel?.text = task.name
        }
        return cell
    }
    
    func createTask() -> [Task] {
        
        let task1 = Task()
        task1.name = "Finish App"
        task1.important = true
        
        let task2 = Task()
        task2.name = "Do Stuff"
        task2.important = false
        
        return [task1, task2]
        
    }
    @IBAction func buttonTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    

}

