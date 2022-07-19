//
//  OrderViewController.swift
//  StarbucksApp
//
//  Created by 077tech on 2022/06/17.
//

import UIKit
import Tabman
import Pageboy

class OrderViewController: TabmanViewController {

    // 상단 탭바 라이브러리 - TabMan 사용
    private var viewControllers: Array<UIViewController> = []
    
    @IBAction func clcikCart(_ sender: Any) {
        print("fwf")
        
        
    }
    @IBOutlet weak var tempView: UIView! // 상단 탭바 들어갈 자리
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let AllMenu = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AllMenuViewController") as! AllMenuViewController
        let MyMenu = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyMenuViewController") as! MyMenuViewController

        viewControllers.append(AllMenu)
        viewControllers.append(MyMenu)

        
        self.dataSource = self

        // Create bar
        let bar = TMBar.ButtonBar()
//        let bar = TMBar.TabBar()
        bar.backgroundView.style = .blur(style: .regular)
        bar.layout.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        bar.buttons.customize { (button) in
            button.tintColor = .gray // 선택 안되어 있을 때
            button.selectedTintColor = .black // 선택 되어 있을 때
        }
        // 인디케이터 조정
        bar.indicator.weight = .light
        bar.indicator.tintColor = .black
        bar.indicator.overscrollBehavior = .compress
        bar.layout.alignment = .centerDistributed
        bar.layout.contentMode = .fit
        bar.layout.interButtonSpacing = 35 // 버튼 사이 간격
    
        bar.layout.transitionStyle = .snap // Customize

        // Add to view
        addBar(bar, dataSource: self, at: .custom(view: tempView, layout: nil))

        
        
    }
}

extension OrderViewController: PageboyViewControllerDataSource, TMBarDataSource {
    
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
//        let item = TMBarItem(title: "")
//        item.title = "Page \(index)"
//        item.image = UIImage(named: "image.png")
//
//        return item
        
        // MARK: - Tab 안 글씨들
        switch index {
        case 0:
            return TMBarItem(title: "전체 메뉴")
        case 1:
            return TMBarItem(title: "나만의 메뉴")
        default:
            let title = "Page \(index)"
            return TMBarItem(title: title)
        }

    }
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
    
    
}
