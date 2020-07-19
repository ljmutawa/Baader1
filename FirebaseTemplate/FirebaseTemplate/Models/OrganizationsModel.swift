//
//  OrganizationsModel.swift
//  Baader
//
//  Created by laila al mutawa on 7/13/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import Foundation

struct Organization {
    let name: String
    let yearEst: String
    var id = UUID()
    var projects: [Project]
    let description: String
    let logoImgName: String
    
    static var zadGroup = Organization(name: "قريق زاد", yearEst: "٢٠١٢", projects: [], description: "هدفنا غرس قيم التطوع وحب العطاء وبناء جيل قادر على خدمة مجتمعه من خلال مشاريع تطوعية هادفه", logoImgName: "zadGroup")
    
    static var saedAkhak = Organization(name: "لجنة ساعد أخاك المسلم", yearEst: "١٩٩٢", projects: [], description: "لجنة خيرية.. لدينا الكثير من الأنشطة والأسواق الخيرية و نوادي الأطفال والفتيات", logoImgName: "saedAkhak")
    
    static var ersmBasma = Organization(name: "حملة إرسم بسمة", yearEst: "٢٠١٥", projects: [], description: "حملة تهتم بوجبات العمالة و تحرص على الأمن الغذائي لهم", logoImgName: "ersmBasma")
    
    static var alsalamSociety = Organization(name: "جمعية السلام للأعمال الخيرية", yearEst: "٢٠١٥", projects: [], description: "جمعية خيرية تهتم بالأعمال الخيرية و الإنسانية حول العالم", logoImgName: "alsalamSociety")
    
    static var directAid = Organization(name: "جمعية العون المباشر", yearEst: "١٩٨١", projects: [], description: "مؤسسة تطوعية مهتمة بالتنمية و التعليم كوسيلة أساسية لتغيير الوضع المأساوي في افريقيا", logoImgName: "directAid")
    
    static var alnajatCharity = Organization(name: "جمعية النجاة الخيرية", yearEst: "١٩٧٨", projects: [], description: "نهدف إلى استدامة المشاريع التنموية داخل و خارج الكويت", logoImgName: "alnajatCharity")
    
    static func assignProjects() {
        zadGroup.projects = zadGroupProjects
        saedAkhak.projects = saedAkhakProjects
        ersmBasma.projects = ersmBasmaProjects
        alsalamSociety.projects = alsalamSocietyProjects
        directAid.projects = directAidProjects
        alnajatCharity.projects = alnajatCharityProjects
    }
}

let organizations = [Organization.zadGroup, Organization.saedAkhak, Organization.ersmBasma, Organization.alsalamSociety, Organization.directAid, Organization.alnajatCharity]
