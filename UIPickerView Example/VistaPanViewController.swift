//
//  VistaPanViewController.swift
//  UIPickerView Example
//
//  Created by jdiazm on 13/11/15.
//  Copyright © 2015 SourceFreeze. All rights reserved.
//

import UIKit

class VistaPanViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView2: UIPickerView!
    
    var pickerDataSource = ["Delgada", "Crujiente", "Gruesa"];
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.pickerView2.dataSource = self;
        self.pickerView2.delegate = self;
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView2: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView2: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView2: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }
    
    func pickerView(pickerView2: UIPickerView, didSelectRow row: Int, inComponent component: Int)
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

