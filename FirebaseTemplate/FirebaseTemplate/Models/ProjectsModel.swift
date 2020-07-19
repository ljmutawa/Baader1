//
//  ProjectsModel.swift
//  Baader
//
//  Created by laila al mutawa on 7/13/20.
//  Copyright © 2020 ljmutawa. All rights reserved.
//

import Foundation

struct Project {
    let name: String
    let organizationId: UUID
    let organizationName: String
    let description: String
    var date: Date
    var time: String
    var location: String
    var requirements: [String]
    
    func imageName() -> String {
        return "\(name)1"
    }
}

struct Date {
    let dayOfTheWeek: String
    let day: String
    let month: String
    let year: String
    
    func numericalDate() -> String {
        return "\(day) / \(month) / \(year)"
    }
}

var breakfast = Project(name: "وجبة ريوق للعمال", organizationId: Organization.zadGroup.id, organizationName: "فريق زاد", description: "سنقوم بتجهيز وجبات الريوق و توزيعها على عمال النظافة في الصباح الباكر", date: Date(dayOfTheWeek: "الجمعة", day: "١٧", month: "٧", year: "٢٠٢٠"), time: "٥ص - ٧ص", location: "مقر اللجنة في القادسية", requirements: ["التطوع للإناث فقط ", "من عمر ١٣ إلى ٣٠"])
var ef6ar9a2im = Project(name: "وجبة إفطار صائم", organizationId: Organization.zadGroup.id, organizationName: "فريق زاد", description: "سنقوم بتجهيز وجبات الإفطار و توزيعها على العمال في سوق المباركية", date: Date(dayOfTheWeek: "الأثنين", day: "٢٠", month: "٧", year: "٢٠٢٠"), time: "٣م - ٦م", location: "مقر اللجنة في القادسية", requirements: ["التطوع للإناث فقط ", "من عمر ١٣ إلى ٣٠"])
var kiswatShita2 = Project(name: "كسوة الشتاء", organizationId: Organization.zadGroup.id, organizationName: "فريق زاد", description: "سنقوم بتجهيز كسوة كاملة دافئة و توزيعها على عمال محطات الوقود", date: Date(dayOfTheWeek: "الخميس", day: "٥", month: "١١", year: "٢٠٢٠"), time: "٤م - ٧م", location: "مقر اللجنة في القادسية", requirements: ["التطوع للإناث فقط ", "من عمر ١٣ إلى ٣٠"])
var zadGroupProjects = [breakfast, ef6ar9a2im, kiswatShita2]


var happyOrphans = Project(name: "فرحة يتيم", organizationId: Organization.saedAkhak.id, organizationName: "لجنة ساعد أخاك المسلم", description: " سيتم تجهيز الهدايا و الوجبات و البالونات و الملابس و الذهاب بالباص مع المشرفات إلى دار الأيتام و قضاء وقت معهم و إسعادهم ببعض الفعاليات الترفيهية", date: Date(dayOfTheWeek: "الأحد", day: "٢٠", month: "١", year: "٢٠٢١"), time: "٤م - ٧م", location: "مقر اللجنة في السرة", requirements: ["التطوع للإناث فقط", "من عمر ١٠ إلى ٢٠"])
var studentBags = Project(name: "حقيبة الطالب", organizationId: Organization.saedAkhak.id, organizationName: "لجنة ساعد أخاك المسلم", description: "سيتم تجهيز الحقائب المدرسية لطلبة العلم المكفولين من اللجنة ", date: Date(dayOfTheWeek: "الثلاثاء", day: "١٢", month: "٧", year: "٢٠٢٠"), time: "١٠ص - ١م", location: "مقر اللجنة في السرة", requirements: ["التطوع للإناث فقط", "من عمر ١٠ إلى ٢٠"])
var dishesOfGood = Project(name: "طبق الخير", organizationId: Organization.saedAkhak.id, organizationName: "لجنة ساعد أخاك المسلم", description: "سيتم تنظيم معرض خيري لبيع الطبخ المنزلي و تجميع الأموال للأسر  المتعففة", date: Date(dayOfTheWeek: "الأربعاء", day: "١٥", month: "٣", year: "٢٠٢١"), time: "١٠ص - ٨م", location: "مقر اللجنة في السرة", requirements: ["التطوع للإناث فقط", "من عمر ١٥+"])
var saedAkhakProjects = [happyOrphans, studentBags, dishesOfGood]


var lunch = Project(name: "ورشة إطعام العمال", organizationId: Organization.ersmBasma.id, organizationName: "حملة ارسم البسمة", description: " سنجهز وجبات الغداء و نوزعها على تجمع عمال الصباحية، و سيتم الذهاب بالباص مع المشرفين", date: Date(dayOfTheWeek: "الأثنين", day: "١٣", month: "٧", year: "٢٠٢٠"), time: "٢م - ٥م", location: "مقر اللجنة في جنوب السرة", requirements: ["التطوع للذكور و الأناث", "من عمر ١٧+"])
var ef6ar9a2im2 = Project(name: "ورشة إفطار صائم", organizationId: Organization.ersmBasma.id, organizationName: "حملة ارسم البسمة", description: "سنقوم بتجهيز وجبات الإفطار و توزيعها في منطقة مستشفى الأميري. التجمع في مطعم طازج في حولي", date: Date(dayOfTheWeek: "السبت", day: "١٢", month: "٥", year: "٢٠٢٠"), time: "١٢م - ٦م", location: "مطعم طازج في حولي", requirements: ["التطوع للذكور و الأناث", "من عمر ١٣+"])
var machlatKhair = Project(name: "ماجلة الخير", organizationId: Organization.ersmBasma.id, organizationName: "حملة ارسم البسمة", description: "سنقوم بتعليب ٣٠٠ كرتون من الأغذية المعلبة و توزيعها على العمال في منطقة جليب الشيوخ", date: Date(dayOfTheWeek: "الأربعاء", day: "١٦", month: "٩", year: "٢٠٢٠"), time: "١٠ص - ٣م", location: "مقر اللجنة في جنوب السرة", requirements: ["التطوع للذكور و الأناث", "من عمر ٢٠ إلى ٥٠"])
var ersmBasmaProjects = [lunch, ef6ar9a2im2, machlatKhair]


var syrianRefugees = Project(name: "حملة إغاثة لاجئين", organizationId: Organization.alsalamSociety.id, organizationName: "جمعية السلام لللأعمال الخيرية", description: " تهتم الحملة باستقبال التبرعات العينية من الناس و تنظيمها و ترتيبها و تحميلها في الشاحنات المتوجهة إلى سوريا", date: Date(dayOfTheWeek: "السبت", day: "٥", month: "١٢", year: "٢٠٢٠"), time: "١٠ص - ٧م", location: "مقر الشاحنات في العديلية", requirements: ["التطوع للذكور و الأناث", "من عمر ١٠+"])
var nursingHome = Project(name: "رحلة إلى دار المسنين", organizationId: Organization.alsalamSociety.id, organizationName: "جمعية السلام لللأعمال الخيرية", description: " سنقوم بزيارة مقر دار المسنين مع الهدايا و وجبة العشاء و سيتم عمل مسابقات و عرض مسرحية فكاهية", date: Date(dayOfTheWeek: "الخميس", day: "١٨", month: "١١", year: "٢٠٢٠"), time: "٤م - ٧م", location: "مقر جمعية السلام العديلية", requirements: ["التطوع للإناث فقط", "من عمر ١٦+"])
var alsalamSocietyProjects = [syrianRefugees, nursingHome]


var studentGifts = Project(name: "هدية الطالب", organizationId: Organization.directAid.id, organizationName: "جمعية العون المباشر", description: "سيتم تجميع كتب و قصص و هدايا من المتبرعين و ترتيبها في علب لإرسالها لأطفال أفريقيا", date: Date(dayOfTheWeek: "الخميس", day: "٦", month: "١٠", year: "٢٠٢٠"), time: "١١ص - ٦م", location: "مقر اللجنة في الروضة", requirements: ["التطوع للذكور و الأناث ", "من عمر  ١٢+"])
var eidLivery = Project(name: "كسوة العيد", organizationId: Organization.directAid.id, organizationName: "جمعية العون المباشر", description: "سيتم ترتيب و تجهيز كسوة العيد حسب الفئات العمرية و وضعها في كراتين لإرسالها إلى كينيا ", date: Date(dayOfTheWeek: "السبت", day: "٢١", month: "١٠", year: "٢٠٢٠"), time: "١٢م - ٥م", location: "مقر اللجنة في الروضة", requirements: ["التطوع للذكور و الأناث ", "من عمر  ١٠+"])
var directAidProjects = [studentGifts, eidLivery]


var quranSessions = Project(name: "حلقات القرآن", organizationId: Organization.alnajatCharity.id, organizationName: "جمعية النجاة الخيرية", description: "يهتم هذا المشروع بمراجعة جزء ٣٠ من القرآن الكريم للأطفال مع التفسير المبسط حتى يثبت الحفظ في ذهن الطفل", date: Date(dayOfTheWeek: "الأربعاء", day: "٣", month: "٩", year: "٢٠٢٠"), time: "٥م - ٨م", location: "مقر اللجنة في الروضة", requirements: ["التطوع للذكور فقط ", "من عمر  ١٨+"])
var studentBags2 = Project(name: "حقيبة مدرسة", organizationId: Organization.alnajatCharity.id, organizationName: "جمعية النجاة الخيرية", description: "سيتم تجهيز الحقائب المدرسية لطلاب مدرسة النجاة في فلسطين", date: Date(dayOfTheWeek: "الثلثاء", day: "١٢", month: "٨", year: "٢٠٢٠"), time: "١٠ص - ١م", location: "مقر اللجنة في الروضة", requirements: ["التطوع للذكور و الأناث ", "من عمر  ١٠+"])
var alnajatCharityProjects = [quranSessions, studentBags2]


var projects: [Project] = [breakfast, happyOrphans, lunch, syrianRefugees, studentGifts, quranSessions, ef6ar9a2im, studentBags, nursingHome, eidLivery, dishesOfGood, studentBags2, ef6ar9a2im2, kiswatShita2, machlatKhair]
