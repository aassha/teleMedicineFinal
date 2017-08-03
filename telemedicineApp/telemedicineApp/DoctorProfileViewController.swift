//
//  DoctorProfileViewController.swift
//  telemedicineApp
//
//  Created by Aastha Shah on 8/1/17.
//  Copyright © 2017 Aastha Shah. All rights reserved.
//
//MARK:Aastha Shah
import UIKit

class DoctorProfileViewController: UIViewController {
    
    var doctorNameVar: String? {
        didSet {
            guard let name = doctorNameVar else {
                return
            }
            if isViewLoaded {
                doctorName.text = name
            }
        }
    }
    
    
    
    
    var location: String? {
        didSet {
            guard let l = location else {
                return
            }
            if isViewLoaded {
                locationLabel.text = l
            }
        }
    }
    
    
    var language: String? {
        didSet {
            guard let lang = language else {
                return
            }
            if isViewLoaded {
                languageLabel.text = lang
            }
        }
    }
    
    var specialty: String? {
        didSet {
            guard let s = specialty else {
                return
            }
            if isViewLoaded {
                specialtyLabel.text = s
            }
        }
    }
    

    
    var state: String? {
        didSet {
            guard let st = state else {
                return
            }
            if isViewLoaded {
                stateLabel.text = st
            }
        }
    }
//    var experience: Int = 0 {
//        didSet {
//            experienceLabel.text = String(experience)
//        }
//    }
    
//    var price: Int = 0 {
//        didSet {
//            priceLabel.text = String(price)
//        }
//    }
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var doctorName: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var languageLabel: UILabel!
    
    @IBOutlet weak var specialtyLabel: UILabel!
    
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet weak var experienceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doctorName.text! = doctorNameVar!
        priceLabel.text = String(50)
        locationLabel.text = location
        languageLabel.text = language
        specialtyLabel.text = specialty
        experienceLabel.text = String(10)
        stateLabel.text = state
    }
    
    @IBAction func videoChatDoctor(_ sender: Any) {
        UIApplication.shared.openURL(NSURL(string: "facetime://2014568064") as! URL)
    }


}
