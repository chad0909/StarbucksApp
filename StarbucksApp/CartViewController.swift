//
//  CartViewController.swift
//  StarbucksApp
//
//  Created by 077tech on 2022/06/21.
//

import UIKit

class CartViewController: UIViewController {
    @IBOutlet weak var coffeeSize: UILabel!
    @IBOutlet weak var coffeeCup: UILabel!
    @IBOutlet weak var coffeeName: UILabel!

    
    var coffeeNameText:String = ""
    var coffeeSizeText:String = ""
    var coffeeCupText:String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.coffeeName.text = coffeeNameText
        self.coffeeCup.text = coffeeCupText
        self.coffeeSize.text = coffeeSizeText
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
