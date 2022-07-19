//
//  HomeViewController.swift
//  StarbucksApp
//
//  Created by 077tech on 2022/06/17.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var TitleName: UILabel!
    @IBOutlet weak var loginView: UIView!
    let alert = UIAlertController(title: "개인정보 열람을 허용하시겠습니까?", message: "개인정보를 가져갑니다", preferredStyle: UIAlertController.Style.alert)
    let OKAction = UIAlertAction(title: "확인", style: .default, handler: nil)
    let CancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView?.layer.shadowOpacity = 0.2
        loginView?.layer.shadowOffset = CGSize(width: 0, height: 10)
        loginView?.layer.shadowRadius = 5
        loginView?.layer.masksToBounds = false

        alert.addAction(OKAction)
        alert.addAction(CancelAction)
        present(alert, animated: false, completion: nil)
        
        TitleName.text = "안녕하세요 \n스타벅스입니다."
    }

}

