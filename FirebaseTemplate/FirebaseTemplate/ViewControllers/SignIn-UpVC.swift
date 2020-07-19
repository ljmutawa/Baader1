//
//  SignIn-UpVC.swift
//  Baader
//
//  Created by laila al mutawa on 7/10/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import UIKit

class SignIn_UpVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        performSegue(withIdentifier: "firstPageToSignUp", sender: nil)
    }
    
    @IBAction func signInButton(_ sender: Any) {
        performSegue(withIdentifier: "firstPageToSignIn", sender: nil)
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
