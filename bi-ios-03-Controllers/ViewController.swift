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
    @IBOutlet weak var showNextButton: UIButton!
    
    //pokud overridnu tuto metodu tak GUI vytvarim ja a system na me dlabe
   // override func loadView() {
       // self.view = UIView()
       // view.backgroundColor = .blueColor()
    //print("load view")
    //}
    
    override func viewDidLoad() {
        print("did load")
        super.viewDidLoad()
        self.title = "Root"
        
        showNextButton.addTarget(self, action: "showNextTapped", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        
      //self.navigationItem.leftBarButtonItem = UIBarButtonItem(...custom view with uibutton)
        
       // self.navigationItem.titleView = UISlider()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func showNextTapped() {
        print("Show Next Tapped")
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("SecondVC")
        if let controller = vc {
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
    
    @IBAction func infoTapped(sender: AnyObject) {
        print("info tapped")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print(self.navigationItem.titleView)
        print(self.navigationItem.rightBarButtonItem)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        changeColor(segmentedControl)

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
        
        self.label.text = view.backgroundColor?.description
    }
    
    
    

}

