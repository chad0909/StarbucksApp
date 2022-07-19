//
//  MyMenuViewController.swift
//  StarbucksApp
//
//  Created by 077tech on 2022/06/19.
//

import UIKit

class MyMenuViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        settings()
        
        
    }
    
    func settings(){
        registerButton.layer.cornerRadius = 15
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.green.cgColor
        
        loginButton.layer.cornerRadius = 15
        
    }
    
    
    
}
