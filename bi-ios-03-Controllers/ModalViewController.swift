//
//  ModalViewController.swift
//  bi-ios-03-Controllers
//
//  Created by Dominik Vesely on 27/10/15.
//  Copyright © 2015 Ackee s.r.o. All rights reserved.
//

import Foundation
import UIKit

class ModalVC : UIViewController {
    
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func closeMeAction(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}