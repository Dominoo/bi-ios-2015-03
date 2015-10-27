//
//  ViewController.swift
//  bi-ios-03-Controllers
//
//  Created by Dominik Vesely on 27/10/15.
//  Copyright © 2015 Ackee s.r.o. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    //pokud overridnu tuto metodu tak GUI vytvarim ja a system na me dlabe
    //override func loadView() {
    //print("load view")
    //}
    
    override func viewDidLoad() {
        print("did load")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func changeColor(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = .redColor()
        } else {
            self.view.backgroundColor = UIColor.greenColor()
        }
    }
    
    
    

}

