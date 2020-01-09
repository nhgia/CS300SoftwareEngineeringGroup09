//
//  MyCourseViewController.swift
//  Schoodle
//
//  Created by Gia Nguyen on 1/10/20.
//  Copyright © 2020 Gia Nguyen. All rights reserved.
//

import UIKit

class MyCourseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var titleNav: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var cou:[String] = ["Math Junior 1", "Physics Lab 1", "English 10th", "Critical Thinking"]
    var des:[String] = ["Math for 10th grade student", "Real experiment with some physics phenomenons", "Base on English for High School Student", "Help student to think outside the box"]
    var det:[String] = ["Mon-Wed-Fri on 18:00\nTeacher: Mr Do Van D", "Tue-Thu on 19:30\nTeacher: Mr Do Van D", "Sun on 13:00\nTeacher: Mr Do Van D", "Sun on 09:00\nTeacher: Mr Do Van D"]
    var titleNavi:String = "My Course"
    var enrollable:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleNav.text = titleNavi
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cou.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CourseTableViewCell", for: indexPath) as! CourseTableViewCell
        cell.title.text = cou[indexPath.row]
        cell.desc.text = des[indexPath.row]
        cell.detailed.text = det[indexPath.row]
        if !enrollable {
            cell.enrollBtn.alpha = 0
        }
        else {
            cell.enrollBtn.alpha = 1
        }
        cell.action = {
            self.dismiss(animated: true, completion: nil)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
