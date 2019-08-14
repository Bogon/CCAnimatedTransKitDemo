//
//  CCATKMainTableViewController.swift
//  CCAnimatedTransitioningKit_Example
//
//  Created by mac on 2019/8/14.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class CCATKMainTableViewController: UITableViewController {

    
    var dataArray: [String] = ["按钮使用", "CollectionView使用"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "MainTableViewController"
        
        
        /*
         
         使用简介:
         
         1.通过继承 DZMATViewController 来使用控制器。
         
         2.通过  [self.navigationController pushATViewController:vc animated:true]; 来执行动画
         
         以上两点其实就是为了设置 self.navigationController.delegate = 目标控制器;
         
         
         执行动画的对象简介:
         
         基于 NSObject 扩展了 ATTarget 属性。(不用考虑图层层级问题, 无论多深的嵌套子视图都可以指定)
         
         ATTarget 简介:
         
         比如 VC1 跳转 VC2, 你想要 VC1 中的哪个视图带有转场动画就指定它(例子: VC1.ATTarget = 执行动画视图),这个对象可以中途随意修改指定。
         
         在返回操作中, 返回的转场动画也是通过它进行定位回到 VC1 中。
         
         注意: ATTarget 如果没有值 默认会使用 VC1.view 作为动画目标使用
         */
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.dataArray.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = self.dataArray[indexPath.row]

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc: CCATKButtonViewController = CCATKButtonViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
