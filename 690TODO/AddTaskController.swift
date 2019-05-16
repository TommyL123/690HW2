//
//  AddTaskController.swift
//  690TODO
//
//  Created by Tommy Lik on 5/01/19.
//  Copyright © 2019 Tommy Lik. All rights reserved.
//

import UIKit


protocol AddTask{
    
    func addTask(name: String)
    
}
class AddTaskController: UIViewController {

    @IBAction func addAction(_ sender: Any) {
        
        if taskNameOutlet.text != ""{
            
            delegate?.addTask(name: taskNameOutlet.text!)
            navigationController?.popViewController(animated: true)
        }
        
    }
    
    @IBOutlet weak var taskNameOutlet: UITextField!
    
    var delegate: AddTask?
    
    
    
    
    
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
