//
//  ProjectPageVC.swift
//  Baader
//
//  Created by laila al mutawa on 7/14/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import UIKit

class ProjectPageVC: UIViewController {
    
    @IBOutlet weak var projectImg: UIImageView!
    @IBOutlet weak var projectName: UILabel!
    @IBOutlet weak var projectOrganization: UIButton!
    @IBOutlet weak var projectDescription: UILabel!
    @IBOutlet weak var projectDate: UILabel!
    @IBOutlet weak var projectTime: UILabel!
    @IBOutlet weak var projectLocation: UILabel!
    @IBOutlet weak var requirement1: UILabel!
    @IBOutlet weak var requirement2: UILabel!
    @IBOutlet weak var requirementButton1: UIButton!
    @IBOutlet weak var requirementButton2: UIButton!
    @IBOutlet weak var makeSureMessage: UILabel!
    @IBOutlet weak var registerButtonImg: UIImageView!
    
    // Confirmation PopUp
    @IBOutlet weak var visualBlur: UIVisualEffectView!
    @IBOutlet var confirmationPopUp: UIView!
    @IBOutlet weak var popUpOrganizationLogo: UIImageView!
    @IBOutlet weak var popUpProjectName: UILabel!
    @IBOutlet weak var popUpOrganizationName: UILabel!
    @IBOutlet weak var popUpProjectDate: UILabel!
    @IBOutlet weak var popUpProjectTime: UILabel!
    @IBOutlet weak var popUpProjectLocation: UILabel!
    
    var effect: UIVisualEffect!
    
    var project: Project!

    override func viewDidLoad() {
        super.viewDidLoad()

        configurePage()

        effect = visualBlur.effect
        visualBlur.effect = nil
        if visualBlur.effect == nil {
            visualBlur.isHidden = true
        }
        
        // Do any additional setup after loading the view.
    }
    
    func configurePage() {
        projectImg.image = UIImage(named: project.imageName())
        projectName.text = project.name
        projectOrganization.setTitle(project.organizationName, for: .normal)
        projectDescription.text = project.description
        projectDate.text = project.date.numericalDate()
        projectTime.text = project.time
        projectLocation.text = project.location
        requirement1.text = project.requirements[0]
        requirement2.text = project.requirements[1]
    }
    
    func configurePopUp() {
        let projectOrganization = organizations.filter({$0.id == project.organizationId})
        popUpOrganizationLogo.image = UIImage(named: projectOrganization[0].logoImgName)
        popUpProjectName.text = "\(project.name)"
        popUpOrganizationName.text = "\(project.organizationName)"
        popUpProjectDate.text = "\(project.date.dayOfTheWeek) \(project.date.numericalDate())"
        popUpProjectTime.text = "\(project.time)"
        popUpProjectLocation.text = "\(project.location)"
    }

    
    @IBAction func organizationBtnClicked(_ sender: Any) {
        let projectOrganization = organizations.filter({$0.id == project.organizationId})
        performSegue(withIdentifier: "projectToOrganization", sender: projectOrganization)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "projectToOrganization" {
            let vc = segue.destination as! OrganizationPageVC
            let sender = sender as! [Organization]
            vc.organization = sender
        }
    }
    
    
    func isOdd(_ number: Int) -> Bool {
        if number % 2 != 0 {
            return true
        } else {
            return false
        }
    }
    
    var numberOfClicksOnR1 = 0
    @IBAction func requirementButton1Clicked(_ sender: UIButton) {
        numberOfClicksOnR1 += 1
        if isOdd(numberOfClicksOnR1) {
            sender.setImage(UIImage(named: "clickedCircle"), for: .normal)
        } else {
            sender.setImage(UIImage(named: "unclickedCircle"), for: .normal)
        }
       registerButton()
    }
    
    var numberOfClicksOnR2 = 0
    @IBAction func requirementButton2Clicked(_ sender: UIButton) {
        numberOfClicksOnR2 += 1
        if isOdd(numberOfClicksOnR2) {
            sender.setImage(UIImage(named: "clickedCircle"), for: .normal)
        } else {
            sender.setImage(UIImage(named: "unclickedCircle"), for: .normal)
        }
        registerButton()
    }
    
    func allRequirementsMet()-> Bool {
        if isOdd(numberOfClicksOnR1) && isOdd(numberOfClicksOnR2){
            makeSureMessage.textColor = #colorLiteral(red: 0.9998916984, green: 1, blue: 0.9998806119, alpha: 1)
            return true
        } else {
            return false
        }
    }
    func registerButton() {
        if allRequirementsMet() {
            registerButtonImg.image = UIImage(named: "Button")
        } else {
            registerButtonImg.image = UIImage(named: "requirementsNotMet")
        }
    }
    
    @IBAction func registerButton(_ sender: Any) {
        if allRequirementsMet(){
            configurePopUp()
            animateIn()
        } else {
            makeSureMessage.textColor = #colorLiteral(red: 0.8225889802, green: 0.1847934127, blue: 0.1066073552, alpha: 0.75)
        }
    }
    
    func animateIn() {
        
        visualBlur.isHidden = false
        
        self.view.addSubview(confirmationPopUp)
        confirmationPopUp.center = self.view.center
        
        confirmationPopUp.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        confirmationPopUp.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            self.visualBlur.effect = self.effect
            self.confirmationPopUp.alpha = 1
            self.confirmationPopUp.transform = CGAffineTransform.identity
        }
    }
    
    func animateOut() {
        
        visualBlur.isHidden = true
                
        UIView.animate(withDuration: 0.3, animations: {
            self.confirmationPopUp.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.confirmationPopUp.alpha = 0
            self.visualBlur.effect = nil
        }) { (success: Bool) in
            self.confirmationPopUp.removeFromSuperview()
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        animateOut()
    }
    
    @IBAction func confirmButton(_ sender: Any) {
        performSegue(withIdentifier: "confirmToThankyou", sender: nil)
    }
    
}
