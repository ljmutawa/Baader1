//
//  ThankyouPageVC.swift
//  Baader
//
//  Created by laila al mutawa on 7/17/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import UIKit
import MessageUI

class ThankyouPageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func homePageButton(_ sender: Any) {
        performSegue(withIdentifier: "thankYouToHome", sender: nil)
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
