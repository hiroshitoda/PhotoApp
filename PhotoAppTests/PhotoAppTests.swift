//
//  PhotoAppTests.swift
//  PhotoAppTests
//
//  Created by 戸田　広 on 2017/12/10.
//  Copyright © 2017年 ossaaaan.com. All rights reserved.
//

import XCTest

@testable import PhotoApp

class PhotoAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let photo = Photo(
            _username: "Lorem ipsum",
            _avatar: UIImage(named: "avatar_sample_01")!,
            _date: "December 3rd, 2017",
            _photo: UIImage(named: "photo_sample_01")!,
            _explanation: "loremIpsum",
            _numberOfFav: 79
        );
        XCTAssertEqual(photo.fav(), "79 favs");
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
