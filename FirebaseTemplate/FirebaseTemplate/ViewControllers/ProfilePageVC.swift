//
//  ProfilePageVC.swift
//  Baader
//
//  Created by laila al mutawa on 7/13/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import UIKit

class ProfilePageVC: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var dayField: UITextField!
    @IBOutlet weak var monthField: UITextField!
    @IBOutlet weak var yearField: UITextField!
    @IBOutlet weak var birthdateLabel: UILabel!
    
    @IBOutlet weak var genderField: UITextField!
    @IBOutlet weak var genderLabel: UILabel!
    
    @IBOutlet weak var changePicture: UIButton!
    @IBOutlet weak var changePassword: UIButton!
    @IBOutlet weak var saveChanges: UIButton!
    @IBOutlet weak var saveChangesButton: UIImageView!
    
    
    @IBOutlet weak var line1: UIImageView!
    @IBOutlet weak var line2: UIImageView!
    @IBOutlet weak var line3: UIImageView!
    @IBOutlet weak var line4: UIImageView!
    
    
    var signedInUser: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        makeFieldsUninteractive()
        configureProfilePage()
        
        // Do any additional setup after loading the view.
    }
    
    func configureProfilePage() {
        Networking.getSingleDocument("users/\(Networking.getUserId()!)") { (user: User) in
            self.signedInUser = user
            print (self.signedInUser)
            self.nameField.text = self.signedInUser.fullName
            self.numberField.text = self.signedInUser.phoneNumber
            self.emailField.text = self.signedInUser.email
            self.dayField.text = self.signedInUser.birthday
            self.monthField.text = self.signedInUser.birthmonth
            self.yearField.text = self.signedInUser.birthyear
            self.genderField.text = self.signedInUser.gender
        }
    }
    
    func makeFieldsUninteractive() {
        //name
        nameField.isUserInteractionEnabled = false
        //nameLabel.textColor = #colorLiteral(red: 0.9567590356, green: 0.9569227099, blue: 0.9567485452, alpha: 1)
        //number
        numberField.isUserInteractionEnabled = false
        //numberLabel.textColor = #colorLiteral(red: 0.9567590356, green: 0.9569227099, blue: 0.9567485452, alpha: 1)
        //email
        emailField.isUserInteractionEnabled = false
        //emailLabel.textColor = #colorLiteral(red: 0.9567590356, green: 0.9569227099, blue: 0.9567485452, alpha: 1)
        //birthdate
        dayField.isUserInteractionEnabled = false
        monthField.isUserInteractionEnabled = false
        yearField.isUserInteractionEnabled = false
        //birthdateLabel.textColor = #colorLiteral(red: 0.9567590356, green: 0.9569227099, blue: 0.9567485452, alpha: 1)
        //gender
        genderField.isUserInteractionEnabled = false
        //genderLabel.textColor = #colorLiteral(red: 0.9567590356, green: 0.9569227099, blue: 0.9567485452, alpha: 1)
        //buttons
        changePicture.isHidden = true
        changePassword.isHidden = true
        saveChanges.isHidden = true
        saveChangesButton.isHidden = true
        //lines
        line1.isHidden = true
        line2.isHidden = true
        line3.isHidden = true
        line4.isHidden = true
    }
    func makeFieldsInteractive() {
        //name
        nameField.isUserInteractionEnabled = true
        nameLabel.textColor = #colorLiteral(red: 0.7373874784, green: 0.7370451093, blue: 0.7500900626, alpha: 1)
        //number
        numberField.isUserInteractionEnabled = true
        numberLabel.textColor = #colorLiteral(red: 0.7373874784, green: 0.7370451093, blue: 0.7500900626, alpha: 1)
        //email
        emailField.isUserInteractionEnabled = true
        emailLabel.textColor = #colorLiteral(red: 0.7373874784, green: 0.7370451093, blue: 0.7500900626, alpha: 1)
        //birthdate
        dayField.isUserInteractionEnabled = true
        monthField.isUserInteractionEnabled = true
        yearField.isUserInteractionEnabled = true
        birthdateLabel.textColor = #colorLiteral(red: 0.7373874784, green: 0.7370451093, blue: 0.7500900626, alpha: 1)
        //gender
        genderField.isUserInteractionEnabled = true
        genderLabel.textColor = #colorLiteral(red: 0.7373874784, green: 0.7370451093, blue: 0.7500900626, alpha: 1)
        //buttons
        changePicture.isHidden = false
        changePassword.isHidden = false
        saveChanges.isHidden = false
        saveChangesButton.isHidden = false
        //lines
        line1.isHidden = false
        line2.isHidden = false
        line3.isHidden = false
        line4.isHidden = false
    }
    
    var numberOfClicksOnEdit = 0
    @IBAction func editProfile(_ sender: Any) {
        numberOfClicksOnEdit += 1
        fields()
    }
    
    func fields() {
        if numberOfClicksOnEdit % 2 != 0 {
            makeFieldsInteractive()
        } else {
            makeFieldsUninteractive()
        }
    }
    
    @IBAction func saveChanges(_ sender: Any) {
        numberOfClicksOnEdit += 1
        fields()
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
