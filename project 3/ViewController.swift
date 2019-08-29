//
//  ViewController.swift
//  project 3
//
//  Created by COE-05 on 29/08/19.
//  Copyright © 2019 COE-05. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var pickerview: UIPickerView!
    var arrTech = [".Net","Java","PHP"]
    
    //data source is started
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrTech.count
    }
    //data source is end
    
    //delegate methods need to create
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrTech[row]
    }
    
    //end delegate
    
    //button code for add data array and display in picker view
    
    @IBOutlet weak var txttech: UITextField!
    
   
    
    @IBAction func btnsavedataarray(_ sender: Any) {
        arrTech.append(txttech.text!)
        pickerview.reloadAllComponents()
    }
    
        // Do any additional setup after loading the view, typically from a nib.
   
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }



}






