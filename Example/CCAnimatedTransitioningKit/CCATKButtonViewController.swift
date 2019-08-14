
//
//  CCATKButtonViewController.swift
//  CCAnimatedTransitioningKit_Example
//
//  Created by mac on 2019/8/14.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import CCAnimatedTransKit

class CCATKButtonViewController: UIViewController {

    /// a下一页button
    lazy var addCityButton: UIButton = {
        let nextButton: UIButton = UIButton.init(frame: CGRect.init(x: 100, y: 100, width: 100, height: 150))
        nextButton.setTitle("点击关注新城市", for: .normal)
        nextButton.setTitleColor(UIColor.white, for: .normal)
        nextButton.backgroundColor = UIColor.orange
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.medium)
        nextButton.layer.masksToBounds = true
        nextButton.layer.cornerRadius = 15.0
        return nextButton
    }()
    
    override func loadView() {
        super.loadView()
        self.view.addSubview(self.addCityButton)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
        self.addCityButton.addTarget(self, action: #selector(touch), for: UIControlEvents.touchUpInside)
        
    }
    

    @objc func touch() {
        self.atkTarget = self.addCityButton
        let vc: CCATKReadingViewController = CCATKReadingViewController()
        self.navigationController?.push(at: vc, animated: true)
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
