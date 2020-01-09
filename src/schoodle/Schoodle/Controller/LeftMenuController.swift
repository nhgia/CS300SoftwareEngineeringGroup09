//
//  LeftMenuController.swift
//  Schoodle
//
//  Created by Gia Nguyen on 1/10/20.
//  Copyright © 2020 Gia Nguyen. All rights reserved.
//

import UIKit

class LeftMenuController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let imgStr:[UIImage] = [#imageLiteral(resourceName: "notifications_24px"), #imageLiteral(resourceName: "list_alt_24px"), #imageLiteral(resourceName: "settings_24px"), #imageLiteral(resourceName: "reply_24px"), #imageLiteral(resourceName: "help_outline_24px")]
    let val:[String] = ["Notifications", "To-do List", "Setting", "Logout", "About Us"]
    var curSel:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeftMenuTableViewCell", for: indexPath) as! LeftMenuTableViewCell
        cell.img.image = imgStr[indexPath.row]
        cell.lbl.text = val[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.dismiss(animated: true) {
                let screen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "NotiViewController") as! NotiViewController
                
                MainManager.sharedInstance().getCurrentController().present(screen, animated: true, completion: nil)
            }
        case 3:
            self.dismiss(animated: true) {
                
            }
        default:
            print("a")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
