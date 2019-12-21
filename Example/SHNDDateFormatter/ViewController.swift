//
//  ViewController.swift
//  SHNDDateFormatter
//
//  Created by sahandraeisi1994@gmail.com on 01/01/2019.
//  Copyright (c) 2019 sahandraeisi1994@gmail.com. All rights reserved.
//

import UIKit
import SHNDDateFormatter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter()
        numberFormatter()
    }
    
    func dateFormatter() {
        
        let builderObject = DateBuilder { (builder) in
            
            builder.inputDateString = "01-01-2019"
            builder.inputDateFormat = "MM-dd-yyyy"
            builder.outputDateFormat = "MMM d, yyyy"
            builder.inputCalenderIdentifier = .gregorian
            builder.outputCalenderIdentifier = .persian
            builder.outputLocale = "fa_IR"
        }
        
        let stringConvertedDate = SHNDDateFormatter(builder: builderObject).build()
        print(stringConvertedDate as Any)
    }
    
    func numberFormatter() {
        
        let builderObject = NumberBuilder { (builder) in
            builder.locale = "en_US"
            builder.number = NSNumber(value: -124513)
            builder.numberStyle = .decimal
        }
        
        let convertedValue = SHNDNumberFormatter(builder: builderObject)?.convert()
        print(convertedValue as Any)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

