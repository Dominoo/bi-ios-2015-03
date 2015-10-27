//
//  SecondVC.swift
//  bi-ios-03-Controllers
//
//  Created by Dominik Vesely on 27/10/15.
//  Copyright © 2015 Ackee s.r.o. All rights reserved.
//


import Foundation
import UIKit

class SecondVC : UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func loadView() {
        super.loadView()
        
    }
    
    @IBAction func valueChanged(sender: UISlider) {
        self.valueLabel.text = "\(sender.value)"
    }
    
}

