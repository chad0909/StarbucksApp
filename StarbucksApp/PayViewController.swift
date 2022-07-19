//
//  PayViewController.swift
//  StarbucksApp
//
//  Created by 077tech on 2022/06/17.
//

import UIKit

class PayViewController: UIViewController {
    @IBOutlet weak var PayView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        PayView.layer.shadowOpacity = 0.2
        PayView.layer.shadowOffset = CGSize(width: 0, height: 10)
        PayView.layer.shadowRadius = 10
        PayView.layer.masksToBounds = false

    }
    
    @IBAction func payActionButton(_ sender: Any) {
        
    }



}
