//
//  SignInVC.swift
//  Baader
//
//  Created by laila al mutawa on 7/11/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passLabel: UILabel!
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var missingData: UILabel!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func emailTextFieldEditingDidBegin(_ sender: Any) {
        emailLabel.textColor = #colorLiteral(red: 0.1169432476, green: 0.2288177013, blue: 0.2923645377, alpha: 0.6)
        emailTextField.placeholder = ""
    }
    
    @IBAction func passTextFieldEditingDidBegin(_ sender: Any) {
        passLabel.textColor = #colorLiteral(red: 0.1169432476, green: 0.2288177013, blue: 0.2923645377, alpha: 0.6)
        passTextField.placeholder = ""
    }
    
    @IBAction func forgotMyPassBtn(_ sender: Any) {
        Networking.forgetPassword(email: emailTextField.text!)
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        performSegue(withIdentifier: "signInToSignUp", sender: nil)
    }
    
    
    @IBAction func finalSignInBtn(_ sender: Any) {
        
        let allFieldsFilled = emailTextField.text != "" && passTextField.text != ""
        let email = emailTextField.text!
        let password = passTextField.text!
        
        Networking.signIn(user: SignInCredentials(email:email, password: password), success: { (uid) in
            if allFieldsFilled {
                self.performSegue(withIdentifier: "signedIn", sender: nil)
            }
        }) { (error) in
            self.missingData.textColor = #colorLiteral(red: 0.8442829251, green: 0.2776986063, blue: 0.2114738524, alpha: 1)
        }
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
