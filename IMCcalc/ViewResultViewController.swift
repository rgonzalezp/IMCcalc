//
//  ViewResultViewController.swift
//  IMCcalc
//
//  Created by Federico Gonzalez on 2/8/19.
//  Copyright © 2019 Ricardo Gonzalez. All rights reserved.
//

import UIKit

class ViewResultViewController: UIViewController {

    var indexIM:Double = 0
    @IBOutlet weak var imcResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        imcResult.text = String(indexIM)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
