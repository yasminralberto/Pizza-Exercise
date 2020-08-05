//
//  ViewController.swift
//  Yasmin_A_PizzaExercise
//
//  Created by Yasmin Alberto Ruiz on 8/4/20.
//  Copyright © 2020 Yasmin Alberto Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {


    
    @IBOutlet weak var picker: UIPickerView!

    let toppings = [["pepperoni","onions", "mushrooms", "peppers", "cheese"],
                    ["thin","deep","thick"]]
    var pizza: (String, String) = ("","")
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    
    //connections
        picker.delegate = self
        picker.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return toppings[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return toppings[component].count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        if component == 0{
            pizza.0 = toppings[component][row]
        } else {
            pizza.1 = toppings[component][row]
        }
        print(pizza)
    }
    
}

