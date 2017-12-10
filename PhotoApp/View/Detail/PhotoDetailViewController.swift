//
//  PhotoDetailViewController.swift
//  MySingleViewApp
//
//  Created by 戸田　広 on 2017/12/02.
//  Copyright © 2017年 ossaaaan.com. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var explanation: UITextView!
    @IBOutlet weak var fav: UILabel!
    
    var photoData: Photo!
    
    private func updateUI() {
        avatar.image = photoData.avatar
        username.text = photoData.username
        date.text = photoData.date
        photo.image = photoData.photo
        explanation.text = photoData.explanation
        fav.text = photoData.fav()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
