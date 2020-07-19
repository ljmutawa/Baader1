//
//  OrganizationPageVC.swift
//  Baader
//
//  Created by laila al mutawa on 7/15/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import UIKit

class OrganizationPageVC: UIViewController {
    
    var organization: [Organization]?
    var org: Organization?
    
    @IBOutlet weak var organizationLogo: UIImageView!
    @IBOutlet weak var organizationName: UILabel!
    @IBOutlet weak var organizationDescription: UILabel!
    //Project1
    @IBOutlet weak var project1Image: UIImageView!
    @IBOutlet weak var project1Name: UILabel!
    @IBOutlet weak var project1Date: UILabel!
    //Project2
    @IBOutlet weak var project2Image: UIImageView!
    @IBOutlet weak var project2Name: UILabel!
    @IBOutlet weak var project2Date: UILabel!
    //Project3
    @IBOutlet weak var project3Image: UIImageView!
    @IBOutlet weak var project3Name: UILabel!
    @IBOutlet weak var project3Date: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if organization != nil {
            configureOrganizationPage()
        } else {
            configureOrgPage()
        }
        // Do any additional setup after loading the view.
    }
    
    
    func configureOrganizationPage() {
        
        let project1 = organization?[0].projects[0]
        let project2 = organization?[0].projects[1]
        
        organizationLogo.image = UIImage(named:organization![0].logoImgName)
        organizationName.text = organization?[0].name
        organizationDescription.text = organization?[0].description
        //Project1
        project1Image.image = UIImage(named: project1!.name)
        project1Name.text = project1!.name
        project1Date.text = project1!.date.numericalDate()
        //Project2
        project2Image.image = UIImage(named: project2!.name)
        project2Name.text = project2!.name
        project2Date.text = project2!.date.numericalDate()
        //Project3
        if organization![0].projects.count > 2 {
            let project3 = organization![0].projects[2]
            project3Image.image = UIImage(named: project3.name)
            project3Name.text = project3.name
            project3Date.text = project3.date.numericalDate()
        }
    }
    
    
    func configureOrgPage() {
        let project1 = org?.projects[0]
        let project2 = org?.projects[1]
        
        organizationLogo.image = UIImage(named:org!.logoImgName)
        organizationName.text = org?.name
        organizationDescription.text = org?.description
        //Project1
        project1Image.image = UIImage(named: project1!.name)
        project1Name.text = project1!.name
        project1Date.text = project1!.date.numericalDate()
        //Project2
        project2Image.image = UIImage(named: project2!.name)
        project2Name.text = project2!.name
        project2Date.text = project2!.date.numericalDate()
        //Project3
        if org!.projects.count > 2 {
            let project3 = org!.projects[2]
            project3Image.image = UIImage(named: project3.name)
            project3Name.text = project3.name
            project3Date.text = project3.date.numericalDate()
        }
    }
    
    
    @IBAction func project1Clicked(_ sender: Any) {
        let project = organization?[0].projects[0]
        let proj = org?.projects[0]
        performSegue(withIdentifier: "orgToProj", sender: project ?? proj)
    }
    
    @IBAction func project2Clicked(_ sender: Any) {
        let project = organization?[0].projects[1]
        let proj = org?.projects[1]
        performSegue(withIdentifier: "orgToProj", sender: project ?? proj)
        
    }
    
    @IBAction func project3Clicked(_ sender: Any) {
        if org?.projects.count ?? 0 > 2 || organization?[0].projects.count ?? 0 > 2 {
            let project = organization?[0].projects[2]
            let proj = org?.projects[2]
            performSegue(withIdentifier: "orgToProj", sender: project ?? proj)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ProjectPageVC
        let sender = sender as! Project
        vc.project = sender
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
