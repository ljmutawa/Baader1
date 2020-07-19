//
//  OrganizationCell.swift
//  Baader
//
//  Created by laila al mutawa on 7/16/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import UIKit

class OrganizationCell: UICollectionViewCell {
    
    @IBOutlet weak var organizationLogo: UIImageView!
    @IBOutlet weak var organizationName: UILabel!
    @IBOutlet weak var organizationEst: UILabel!
    
    func configureCell(for organization: Organization) {
        backgroundColor = #colorLiteral(red: 0.9567590356, green: 0.9569227099, blue: 0.9567485452, alpha: 1)
        organizationLogo.image = UIImage(named: organization.logoImgName)
        organizationName.text = organization.name
        organizationEst.text = organization.yearEst
    }
    
}
