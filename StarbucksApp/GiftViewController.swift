//
//  GiftViewController.swift
//  StarbucksApp
//
//  Created by 077tech on 2022/06/17.
//

import UIKit

class GiftViewController: UIViewController {
    @IBOutlet weak var giftview1: UIView!
    @IBOutlet weak var giftview2: UIView!
    @IBOutlet weak var giftview3: UIView!
    
    @IBOutlet weak var testView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        giftview1.layer.shadowOpacity = 0.2
        giftview1.layer.shadowOffset = CGSize(width: 0, height: 10)
        giftview1.layer.shadowRadius = 10
        giftview1.layer.masksToBounds = false
        
        giftview2.layer.shadowOpacity = 0.2
        giftview2.layer.shadowOffset = CGSize(width: 0, height: 10)
        giftview2.layer.shadowRadius = 10
        giftview2.layer.masksToBounds = false
        
        giftview3.layer.shadowOpacity = 0.2
        giftview3.layer.shadowOffset = CGSize(width: 0, height: 10)
        giftview3.layer.shadowRadius = 10
        giftview3.layer.masksToBounds = false
    }
    
    @IBAction func giftViewOneClick(_ sender: Any) {
        print("eijeoigjeriog")
    }
    


}
