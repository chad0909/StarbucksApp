//
//  OtherViewController.swift
//  StarbucksApp
//
//  Created by 077tech on 2022/06/17.
//

import UIKit

class OtherViewController: UIViewController {


    
    let alert = UIAlertController(title: "회원 전용 서비스입니다. \n로그인 하시겠어요?", message: "", preferredStyle: UIAlertController.Style.alert)
    let OKAction = UIAlertAction(title: "확인", style: .default, handler: nil)
    let CancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func button1(_ sender: Any) {
        alert.addAction(OKAction)
        alert.addAction(CancelAction)
        present(alert, animated: false, completion: nil)
    }

}
