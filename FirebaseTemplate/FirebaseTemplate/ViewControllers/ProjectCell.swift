//
//  ProjectCell.swift
//  Baader
//
//  Created by laila al mutawa on 7/13/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import UIKit

class ProjectCell: UITableViewCell {

    @IBOutlet weak var projectName: UILabel!
    @IBOutlet weak var organizationName: UILabel!
    @IBOutlet weak var projectImage: UIImageView!
    
    
    func configureCell(for project: Project) {
        backgroundColor = #colorLiteral(red: 0.9567590356, green: 0.9569227099, blue: 0.9567485452, alpha: 1)
        projectName.text = project.name
        organizationName.text = project.organizationName
        projectImage.image = UIImage(named: project.name)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
