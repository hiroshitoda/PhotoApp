//
//  PhotoListTableViewCell.swift
//  MySingleViewApp
//
//  Created by 戸田　広 on 2017/12/03.
//  Copyright © 2017年 ossaaaan.com. All rights reserved.
//

import UIKit

class PhotoListTableViewCell: UITableViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var explanation: UILabel!
    @IBOutlet weak var fav: UILabel!
    
    var photoData: Photo! {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        avatar.image = photoData.avatar
        photo.image = photoData.photo
        username.text = photoData.username
        date.text = photoData.date
        explanation.text = photoData.explanation
        fav.text = photoData.fav()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
