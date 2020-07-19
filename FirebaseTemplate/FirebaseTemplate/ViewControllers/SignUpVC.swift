//
//  SignUpVC.swift
//  Baader
//
//  Created by laila al mutawa on 7/11/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var genderTextField: UITextField!
    
    @IBOutlet weak var passLabel: UILabel!
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var confirmpassLabel: UILabel!
    @IBOutlet weak var confirmpassTextField: UITextField!
    
    @IBOutlet weak var missingData: UILabel!
    
    let genders = ["أنثى", "ذكر"]

    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        genderTextField.inputView = pickerView
    }
    
   
    @IBAction func nameTextFieldEditingDidBegin(_ sender: Any) {
        fullNameLabel.textColor = #colorLiteral(red: 0.1169432476, green: 0.2288177013, blue: 0.2923645377, alpha: 0.6)
        nameTextField.placeholder = ""
    }
    
    @IBAction func numberTextFieldEditingDidBegin(_ sender: Any) {
        numberLabel.textColor = #colorLiteral(red: 0.1169432476, green: 0.2288177013, blue: 0.2923645377, alpha: 0.6)
        numberTextField.placeholder = ""
    }
    
    @IBAction func emailTextFieldEditingDidBegin(_ sender: Any) {
        emailLabel.textColor = #colorLiteral(red: 0.1169432476, green: 0.2288177013, blue: 0.2923645377, alpha: 0.6)
        emailTextField.placeholder = ""
    }
    
    @IBAction func passTextFieldEditingDidBegin(_ sender: Any) {
        passLabel.textColor = #colorLiteral(red: 0.1169432476, green: 0.2288177013, blue: 0.2923645377, alpha: 0.6)
        passTextField.placeholder = ""
    }
    
    @IBAction func confirmpassTextFieldEditingDidBegin(_ sender: Any) {
        confirmpassLabel.textColor = #colorLiteral(red: 0.1169432476, green: 0.2288177013, blue: 0.2923645377, alpha: 0.6)
        confirmpassTextField.placeholder = ""
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return genders.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genders[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderTextField.text = genders[row]
        genderTextField.resignFirstResponder()
    }
    
    @IBAction func signInButton(_ sender: Any) {
        performSegue(withIdentifier: "signUpToSignIn", sender: nil)
    }
    
    
    @IBAction func finalSignUpButton(_ sender: Any) {
        
        let allFieldsFilled =
                self.nameTextField.text != "" &&
                self.numberTextField.text != "" &&
                self.emailTextField.text != "" &&
                self.dayTextField.text != "" &&
                self.monthTextField.text != "" &&
                self.yearTextField.text != "" &&
                self.genderTextField.text != "" &&
                self.passTextField.text != "" &&
                self.passTextField.text == self.confirmpassTextField.text
        
        let fullName = nameTextField.text!
        let phoneNumber = numberTextField.text!
        let email = emailTextField.text!
        let birthday = dayTextField.text!
        let birthmonth = monthTextField.text!
        let birthyear = yearTextField.text!
        let gender = genderTextField.text!
        let password = passTextField.text!
        
        let user = User(fullName: fullName, phoneNumber: phoneNumber, email: email, birthday: birthday, birthmonth: birthmonth, birthyear: birthyear, gender: gender)
        
        Networking.signUp(user: user, password: password, success: { (uid) in
            if allFieldsFilled{
                self.performSegue(withIdentifier: "signedUp", sender: nil) }
        }) {
            self.missingData.textColor = #colorLiteral(red: 0.8225889802, green: 0.1847934127, blue: 0.1066073552, alpha: 0.9)
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
