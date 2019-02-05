//
//  ViewController.swift
//  IMCcalc
//
//  Created by Federico Gonzalez on 2/4/19.
//  Copyright © 2019 Ricardo Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate  {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        height.delegate = self
        weight.delegate = self
            scroll.contentSize = CGSize(width:400,height: 2500)
        // Do any additional setup after loading the view, typically from a nib.
    }

 
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var scroll: UIScrollView!
    
    @IBAction func textFieldDoneEditing(sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func textFieldDidBeginEditing(_ textField: UITextField) {var punto: CGPoint
        punto = CGPoint.init(x: 0, y: textField.frame.origin.y-50)
        
        self.scroll.setContentOffset(punto, animated: true)
    }
    
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        self.scroll.setContentOffset(CGPoint.zero, animated: true)
    }
    
    @IBAction func backgroundTap(sender: UIControl) {
        weight.resignFirstResponder()
        height.resignFirstResponder()
    }

    @IBAction func calculateIMC(_ sender: Any) {
        var IMC:Double
        let localWeight:Double?
        localWeight = Double(self.weight.text!)!
        let localHeight:Double? = Double(self.height.text!)!
        
        IMC = localWeight! / (localHeight! * localHeight!)
        
        print(IMC)
    }
    
}

