//
//  AddTaskController.swift
//  690TODO
//
//  Created by Tommy Lik on 5/01/19.
//  Copyright © 2019 Tommy Lik. All rights reserved.
//

import UIKit


protocol AddingATask{
    
    func addTask(name: String)
    
}
class AddTaskController: UIViewController {

    @IBAction func addAction(_ sender: Any) {
        
        if theTaskName.text != ""{
            
            taskk?.addTask(name: theTaskName.text!)
            navigationController?.popViewController(animated: true)
        }
        
    }
    
    @IBOutlet weak var theTaskName: UITextField!
    
    var taskk: AddingATask?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
