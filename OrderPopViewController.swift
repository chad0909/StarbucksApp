//
//  OrderPopViewController.swift
//  StarbucksApp
//
//  Created by 077tech on 2022/06/21.
//

import UIKit

class OrderPopViewController: UIViewController {
    
    var coffeeName:String = ""
    var coffeeSize:String = ""
    var coffeeCup:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
    }
    
//
//    guard let vc = storyboard?.instantiateViewController(identifier: "FinalOrderViewController")as? FinalOrderViewController else {return}
//    coffeeName = vc.coffeeNameAAA.text ?? ""
//    coffeeSize = vc.sizeSegment.titleForSegment(at: vc.sizeSegment.selectedSegmentIndex) ?? ""
//    coffeeCup = vc.cupSegment.titleForSegment(at: vc.cupSegment.selectedSegmentIndex) ?? ""
//
//    data()
//
//    func data(){
//        let giveCoffeeName = coffeeName
//        let giveCoffeeSize = coffeeSize
//        let giveCoffeeCup = coffeeCup
//
//        print(giveCoffeeCup)
//        print(giveCoffeeName)
//        print(giveCoffeeSize)
//
//    }

    
    

}
