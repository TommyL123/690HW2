//
//  ViewController.swift
//  690TODO
//
//  Created by Tommy Lik on 5/01/19.
//  Copyright © 2019 Tommy Lik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddingATask, CheckOrUncheckButton {
   
    

    @IBOutlet weak var tableView: UITableView!
    
    var tasks: [Task] = []
    override func viewDidLoad() {
        tasks.append(Task(name: "Have you added a task?"))
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         let todoEntryName = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskCell
        
       
        
        
        
        todoEntryName.taskNameLabel.text = tasks[indexPath.row].name
        
        if tasks[indexPath.row].completedOrNotCompleted{
            todoEntryName.checkBoxOutlet.setBackgroundImage(#imageLiteral(resourceName: "checkbox"), for: UIControlState.normal)
        }
        else{
            
            todoEntryName.checkBoxOutlet.setBackgroundImage(#imageLiteral(resourceName: "uncheckbox"), for: UIControlState.normal)
        }
        
        todoEntryName.theTask = self
        todoEntryName.indexPathIdentifier = indexPath.row
        todoEntryName.tasks = tasks
        
        return todoEntryName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewControlller = segue.destination as! AddTaskController
        viewControlller.taskk = self
    }
    
    func addTask(name: String) {
        tasks.append(Task(name: name))
        tableView.reloadData()
    }
    
    
    func markingTheButton(completedTask: Bool, index: Int) {
        tasks[index].completedOrNotCompleted = completedTask
        
        tableView.reloadData()
    }
    
}

class Task{
    
    var name = ""
    var completedOrNotCompleted = false
    
    convenience init(name: String){
        
        
        self.init()
        self.name = name
    }
}
