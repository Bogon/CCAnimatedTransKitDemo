//
//  CCATKReadingViewController.swift
//  CCAnimatedTransitioningKit_Example
//
//  Created by mac on 2019/8/14.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import CCAnimatedTransKit

class CCATKReadingViewController: CCATKBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.blue
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc: UIViewController = UIViewController()
        vc.view.backgroundColor = UIColor.red
        self.navigationController?.pushViewController(vc, animated: true)
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
