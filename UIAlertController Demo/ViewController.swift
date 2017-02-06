//
//  ViewController.swift
//  UIAlertController Demo
//
//  Created by Jamie Rose Aguinaldo on 06/02/2017.
//  Copyright © 2017 Jamie Rose Aguinaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Declare array that will serve as values to your action sheet
    let collegesArray = ["CMA", "CITE", "CEA", "CSS", "CHS", "CAS"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showAlertDialog(sender: AnyObject) {
        // Create alert dialog
        let alertController = UIAlertController(title: "Default Style", message: "A standard alert.", preferredStyle: .Alert)
        
        
        // Create cancel alert action
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { action in
            print("Cancel button is clicked")
        }
        // Add the cancel alert action to your alert dialog
        alertController.addAction(cancelAction)
        
        
        // Create ok alert action
        let OKAction = UIAlertAction(title: "OK", style: .Default) { action in
            print("Ok button is clicked")
        }
        // Add the ok alert action to your alert dialog
        alertController.addAction(OKAction)
        
        
        // Show the alert action
        self.presentViewController(alertController, animated: true) { }
    }
    

    @IBAction func showActionSheet(sender: AnyObject) {
        // Create action sheet
        let alertController = UIAlertController(title: "Pick a college", message: "Click the selected college", preferredStyle: .ActionSheet)
        
        
        // Create cancel alert action
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { action in
            print("Cancel button is clicked")
        }
        // Add the cancel alert action to your alert dialog
        alertController.addAction(cancelAction)
        
        
        /*
         * Create CMA alert action
         */
        let cmaAction = UIAlertAction(title: "CMA", style: .Default) { action in
            print("CMA is selected")
        }
        // Add the CMA alert action to the action sheet
        alertController.addAction(cmaAction)
        
        
        /*
         * Create CITE alert action
         */
        let citeAction = UIAlertAction(title: "CITE", style: .Default) { action in
            print("CITE is selected")
        }
        // Add the CITE alert action to the action sheet
        alertController.addAction(citeAction)
        
        
        /*
         * Create CEA alert action
         */
        let ceaAction = UIAlertAction(title: "CEA", style: .Default) { action in
            print("CEA is selected")
        }
        // Add the CEA alert action to the action ssheet
        alertController.addAction(ceaAction)
        
        
        /*
         * Create CSS alert action
         */
        let cssAction = UIAlertAction(title: "CSS", style: .Default) { action in
            print("CSS is selected")
        }
        // Add the CSS alert action to the action ssheet
        alertController.addAction(cssAction)
        
        
        /*
         * Create CHS alert action
         */
        let chsAction = UIAlertAction(title: "CHS", style: .Default) { action in
            print("CHS is selected")
        }
        // Add the CHS alert action to the action ssheet
        alertController.addAction(chsAction)
        
        
        /*
         * Create CAS alert action
         */
        let casAction = UIAlertAction(title: "CAS", style: .Default) { action in
            print("CAS is selected")
        }
        // Add the CAS alert action to the action ssheet
        alertController.addAction(casAction)
        
        
        // Show the action sheet
        self.presentViewController(alertController, animated: true) { }

    }
    
    
    @IBAction func showActionSheetDynamic(sender: AnyObject) {
        // Create action sheet
        let alertController = UIAlertController(title: "Pick a college", message: "Click the selected college", preferredStyle: .ActionSheet)
        
        
        // Create cancel alert action
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { action in
           print("Cancel button is clicked")
        }
        // Add the cancel alert action to your alert dialog
        alertController.addAction(cancelAction)
        
        
        // Create a for loop to fetch the values from the array
        for college in collegesArray {
            /* 
            * Create an alert action and pass the fetch value
            * to it's 'title' property
            */
            let collegeAction = UIAlertAction(title: college, style: .Default) { action in
                print(college + " is selected")
            }
            // Add the alert action to the action sheet
            alertController.addAction(collegeAction)
        }
        
        // Show the action sheet
        self.presentViewController(alertController, animated: true) { }
    }
}

