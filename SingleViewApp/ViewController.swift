//
//  ViewController.swift
//  SingleViewApp
//
//  Created by Davelaar,Clinton B on 9/6/19.
//  Copyright © 2019 Davelaar,Clinton B. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfYears: UITextField!
    @IBOutlet weak var tfMonths: UILabel!
    @IBOutlet weak var tfDays: UILabel!
    @IBOutlet weak var tfSeconds: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Time Converter"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Convert", style: .plain, target: self, action: #selector(btnConvertIt))
    }

    @IBAction func btnConvertIt(_ sender: Any) {
        //let years2 = Int(tfYears.text!) ?? 0
        if let years = Int(tfYears.text!) {
            let months = years * 12
            let days = years * 365
            let seconds = years * 365 * 24 * 60 * 60
            tfMonths.text = "\(months)"
            tfDays.text = "\(days)"
            tfSeconds.text = "\(seconds)"
        }else{
            let alert = UIAlertController(title: "Warning!", message: "Invalid years entered. Use 5 years instead?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {(alert: UIAlertAction!) in self.use5()}))
            alert.addAction(UIAlertAction(title: "No, cancel", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    func use5() -> Void{
        tfMonths.text = "\(5 * 12)"
        tfDays.text = "\(5 * 365)"
        tfSeconds.text = "\(5 * 365 * 24 * 60 * 60)"
    }
}

