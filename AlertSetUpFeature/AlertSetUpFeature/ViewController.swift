//
//  ViewController.swift
//  AlertSetUpFeature
//
//  Created by Vibhor Gupta on 12/9/17.
//  Copyright © 2017 Vibhor Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


    }
    override func viewDidAppear(_ animated: Bool) {
        createAlertForUser(title: "Hey Hiiii", message: "I am an Alert message")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createAlertForUser(title : String  , message : String) {

        let alertNotification = UIAlertController(title: title, message: message, preferredStyle: .alert)

        //this line create onw button

        alertNotification.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {
            (action) in

            print("YES")

        }))
        alertNotification.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
            (action) in

            alertNotification.dismiss(animated: true, completion: nil)
            print("cancel pressed" )

        }))
        //to display
        self.present(alertNotification, animated: true, completion: nil)

    }

}

