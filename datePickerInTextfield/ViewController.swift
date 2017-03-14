//
//  ViewController.swift
//  datePickerInTextfield
//
//  Created by 黃毓皓 on 2017/3/14.
//  Copyright © 2017年 ice elson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var bmtTime: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.datePickerMode = .dateAndTime
        
        createDatePicker()
        
    }
    func createDatePicker(){
        //tool bar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        // bar button item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: false)
        
        //inputAccessoryView是增加附屬的view
        bmtTime.inputAccessoryView = toolbar
        //inputView是用自訂的view
        bmtTime.inputView = datePicker
        
    }
    
    func donePressed(){
        // formate date
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        
        
        bmtTime.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }



}

