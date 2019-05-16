//
//  TaskCell.swift
//  690TODO
//
//  Created by Tommy Lik on 5/01/19.
//  Copyright © 2019 Tommy Lik. All rights reserved.
//

import UIKit

protocol CheckOrUncheckButton {
    func markingTheButton(completedTask: Bool, index: Int)
}
class TaskCell: UITableViewCell {

    
    @IBAction func checkBoxAction(_ sender: Any) {
        
        if tasks![indexPathIdentifier!].completedOrNotCompleted{
            
            theTask?.markingTheButton(completedTask: false, index: indexPathIdentifier!)
            
        } else {
                theTask?.markingTheButton(completedTask: true, index: indexPathIdentifier!)
                
            }
        }
    
    
    
    @IBOutlet weak var checkBoxOutlet: UIButton!
    @IBOutlet weak var taskNameLabel: UILabel!
    
    var theTask: CheckOrUncheckButton?
    
    var indexPathIdentifier: Int?
    var tasks: [Task]?
    
}
