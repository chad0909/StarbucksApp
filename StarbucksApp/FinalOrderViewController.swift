//
//  FinalOrderViewController.swift
//  StarbucksApp
//
//  Created by 077tech on 2022/06/21.
//

import UIKit

class FinalOrderViewController: UIViewController{
    
    @IBOutlet weak var coffeeNameAAA: UILabel!
    @IBOutlet weak var sizeSegment: UISegmentedControl!
    @IBOutlet weak var cupSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressAdd(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(identifier: "CartViewController")as? CartViewController else {return}
        vc.coffeeNameText = self.coffeeNameAAA.text ?? ""
        vc.coffeeSizeText = self.sizeSegment.titleForSegment(at: sizeSegment.selectedSegmentIndex) ?? ""
        vc.coffeeCupText = self.cupSegment.titleForSegment(at: cupSegment.selectedSegmentIndex) ?? ""
        self.navigationController?.pushViewController(vc, animated: true)
    }


    
}
