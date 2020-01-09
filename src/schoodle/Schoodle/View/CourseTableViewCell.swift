//
//  CourseTableViewCell.swift
//  Schoodle
//
//  Created by Gia Nguyen on 1/10/20.
//  Copyright © 2020 Gia Nguyen. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell {
    @IBOutlet weak var vvvv: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var detailed: UILabel!
    @IBOutlet weak var enrollBtn: UIButton!
    
    var action:(() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        vvvv.layer.cornerRadius = 8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func enrollBtnTapped(_ sender: Any) {
        action!()
    }
}
