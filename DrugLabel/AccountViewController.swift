//
//  AccountViewController.swift
//  DrugLabel
//
//  Created by bally on 11/1/17.
//  Copyright © 2017 bally. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var userSetting = ["Name", "Password", "Date of Birth", "Sign Out"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userSetting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserSettingCell", for: indexPath)
        cell.textLabel?.text = userSetting[indexPath.row]
        cell.detailTextLabel?.text = userSetting[indexPath.row]
        cell.detailTextLabel?.textColor = UIColor.gray
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
