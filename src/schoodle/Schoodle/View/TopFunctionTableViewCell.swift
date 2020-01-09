//
//  TopFunctionTableViewCell.swift
//  Schoodle
//
//  Created by Gia Nguyen on 1/9/20.
//  Copyright © 2020 Gia Nguyen. All rights reserved.
//

import UIKit

class TopFunctionTableViewCell: UITableViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let img:[UIImage] = [#imageLiteral(resourceName: "paste_24px"), #imageLiteral(resourceName: "create_new_folder_24px"), #imageLiteral(resourceName: "event_available_24px"), #imageLiteral(resourceName: "school_24px")]
    let strText:[String] = ["My Course", "Available", "Schedule", "Grade"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.bgView.layer.cornerRadius = 8
        cell.imgView.image = img[indexPath.item]
        cell.lbl.text = strText[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2, height: 120)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.item {
        case 0:
            let screen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MyCourseViewController") as! MyCourseViewController
            
            MainManager.sharedInstance().getCurrentController().present(screen, animated: true, completion: nil)
        case 1:
            let screen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MyCourseViewController") as! MyCourseViewController
            screen.titleNavi = "Available Courses"
            screen.cou = ["Math 3", "Math 4"]
            screen.enrollable = true
            MainManager.sharedInstance().getCurrentController().present(screen, animated: true, completion: nil)
        default:
            print("b")
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
