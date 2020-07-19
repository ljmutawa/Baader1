//
//  OrganizationsPageVC.swift
//  Baader
//
//  Created by laila al mutawa on 7/13/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import UIKit

class OrganizationsPageVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return organizations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "organizationCell", for: indexPath) as! OrganizationCell
        
        let organization = organizations[indexPath.item]
        cell.configureCell(for: organization)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //let organization = organization.filter({$0.id == organizations[indexPath.item].id})
        let organization = organizations[indexPath.item]
        performSegue(withIdentifier: "organizationsToOrganization", sender: organization)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! OrganizationPageVC
        let sender = sender as! Organization
        vc.org = sender
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
