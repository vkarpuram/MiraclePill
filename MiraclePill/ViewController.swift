//
//  ViewController.swift
//  MiraclePill
//
//  Created by Vishnu Karpuram on 1/11/17.
//  Copyright © 2017 vishnukarpuram. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var stateButton: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    let states = ["Alaska", "Alabama", "Arkansas", "California", "Nevada", "Oregon"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any)
    {
        statePicker.isHidden = !statePicker.isHidden
    }
    
    
    // returns the number of 'columns' to display.
    public func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    
    // returns the # of rows in each component..
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {

        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        stateButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }

}

