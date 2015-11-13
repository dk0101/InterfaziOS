//
//  QuesoViewController.swift
//  UIPickerView Example
//
//  Created by jdiazm on 13/11/15.
//  Copyright © 2015 SourceFreeze. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView3: UIPickerView!
    var pickerDataSource = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"];
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.pickerView3.dataSource = self;
        self.pickerView3.delegate = self;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView3: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView3: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView3: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }
    
    func pickerView(pickerView3: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.whiteColor();
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.redColor();
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.greenColor();
        }
        else
        {
            self.view.backgroundColor = UIColor.blueColor();
        }
    }
    
    
}

