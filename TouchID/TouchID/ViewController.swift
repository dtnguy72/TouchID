//
//  ViewController.swift
//  TouchID
//
//  Created by Danny Nguyen on 11/28/16.
//  Copyright © 2016 Danny Nguyen. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBAction func touched(_ sender: AnyObject)
    {
        let context:LAContext = LAContext()
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        {
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Touch ID Login", reply: { (wasSuccessful, error) in
                if wasSuccessful
                {
                    print("Was a success")
                }
                else
                {
                    print("Not Logged in")
                }
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

