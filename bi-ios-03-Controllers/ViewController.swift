//
//  ViewController.swift
//  bi-ios-03-Controllers
//
//  Created by Dominik Vesely on 27/10/15.
//  Copyright © 2015 Ackee s.r.o. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segmented: UISegmentedControl!
    
    /* override func loadView() {
        print("ahoj")
        self.view = UIView()
        view.backgroundColor = UIColor.whiteColor()
    } */

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Root"
        
        nextButton.addTarget(self, action: "goNext", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        //navigationItem.leftBarButtonItem = UIBarButtonItem(
       // self.navigationItem.titleView = UISlider()
        
    }
    
    func goNext() {
        print("get next tapped")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        changeColor(segmented)
       // segmented.selectedSegmentIndex = 1
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print(self.navigationItem.rightBarButtonItem)
        print(self.navigationItem.titleView)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func changeColor(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = .redColor()
        } else {
            self.view.backgroundColor = UIColor.greenColor()
        }
        
        self.label.text = view.backgroundColor?.description
        
    }

    @IBAction func infoTapped(sender: AnyObject) {
        print("info tapped")
    }
}

