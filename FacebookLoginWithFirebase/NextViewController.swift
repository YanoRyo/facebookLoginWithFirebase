//
//  NextViewController.swift
//  FacebookLoginWithFirebase
//
//  Created by 矢野涼 on 2020-03-05.
//  Copyright © 2020 Ryo Yano. All rights reserved.
//

import UIKit
import SDWebImage

class NextViewController: UIViewController {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey: "pictureURLString") != nil || (UserDefaults.standard.object(forKey: "displayName") != nil){
            let imageString = UserDefaults.standard.object(forKey: "pictureURLString") as! String
            userImageView.sd_setImage(with: URL(string: imageString), completed: nil)
            userImageView.layer.cornerRadius = 20.0
            let displayName = UserDefaults.standard.object(forKey: "displayName") as! String
            userNameLabel.text = displayName
        }

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        
    }


}
