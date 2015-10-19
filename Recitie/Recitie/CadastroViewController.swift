//
//  Cadastro.swift
//  Recitie
//
//  Created by Natalia Souza on 10/13/15.
//  Copyright © 2015 Natalia. All rights reserved.
//

import Foundation
import UIKit
import CloudKit

// nameField = titleField
// saveButton = savePressed

class CadastroViewController:UIViewController{
   
    
    @IBOutlet weak var deadlinePicker: UIDatePicker!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var descriptionField: UITextField!

    var arrayEventos:[Event]?
   
    @IBAction func saveButton(sender: UIButton) {
        
        let event: Event = Event()

        event.name = nameField.text!
        event.description = descriptionField.text!
        
        
        NSNotificationCenter.defaultCenter().postNotificationName("eventPosted", object: self, userInfo: ["event": event])

        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        
        
        
        //notificacao
        
        let todoItem = TodoItem(deadline: deadlinePicker.date, title: nameField.text!, description: descriptionField.text!, UUID: NSUUID().UUIDString)
        TodoList.sharedInstance.addItem(todoItem) // schedule a local notification to persist this item
        self.navigationController?.popToRootViewControllerAnimated(true) // return to list view
   
    }
    
    
    
    
    
   
    
    
    
    
}

