//
//  Photos.swift
//  MySingleViewApp
//
//  Created by 戸田　広 on 2017/12/03.
//  Copyright © 2017年 ossaaaan.com. All rights reserved.
//

import UIKit

class Photo {
    
    static let className = "Photo"
    
    var username: String
    var avatar: UIImage
    var date: String
    var photo: UIImage
    var explanation: String
    var numberOfFav: Int = 0
    
    static let loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    init(
        _username: String,
        _avatar: UIImage,
        _date: String,
        _photo: UIImage,
        _explanation: String,
        _numberOfFav: Int
        ) {
        username = _username
        avatar = _avatar
        date = _date
        photo = _photo
        explanation = _explanation
        numberOfFav = _numberOfFav
    }
    
    func fav() -> String {
        return String(format: "%d favs", numberOfFav)
    }
    
    static let allPhotos = [
        Photo(
            _username: "Lorem ipsum",
            _avatar: UIImage(named: "avatar_sample_01")!,
            _date: "December 3rd, 2017",
            _photo: UIImage(named: "photo_sample_01")!,
            _explanation: loremIpsum,
            _numberOfFav: 79
        ),
        Photo(
            _username: "Lorem ipsum",
            _avatar: UIImage(named: "avatar_sample_02")!,
            _date: "December 1st, 2017",
            _photo: UIImage(named: "photo_sample_02")!,
            _explanation: loremIpsum,
            _numberOfFav: 23
        ),
        Photo(
            _username: "Lorem ipsum",
            _avatar: UIImage(named: "avatar_sample_01")!,
            _date: "November 27th, 2017",
            _photo: UIImage(named: "photo_sample_01")!,
            _explanation: loremIpsum,
            _numberOfFav: 34
        ),
        Photo(
            _username: "Lorem ipsum",
            _avatar: UIImage(named: "avatar_sample_02")!,
            _date: "November 23th, 2017",
            _photo: UIImage(named: "photo_sample_02")!,
            _explanation: loremIpsum,
            _numberOfFav: 56
        )
    ]
}
