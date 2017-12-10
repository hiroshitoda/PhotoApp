//
//  PhotoListTableViewController.swift
//  MySingleViewApp
//
//  Created by 戸田　広 on 2017/12/02.
//  Copyright © 2017年 ossaaaan.com. All rights reserved.
//

import UIKit

class PhotoListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var photoListTableView: UITableView!
    
    let photos = Photo.allPhotos;
    let cellIdentifier = "photoCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoListTableView.estimatedRowHeight = 240
        photoListTableView.rowHeight = UITableViewAutomaticDimension
        
        let photoCellNib = UINib(nibName: "PhotoListTableViewCell", bundle: nil)
        photoListTableView.register(photoCellNib, forCellReuseIdentifier: cellIdentifier)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PhotoListTableViewCell
        cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath) as! PhotoListTableViewCell
        cell.photoData = photos[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "detailSegue", sender: photos[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            let photoDetailViewController = segue.destination as! PhotoDetailViewController
            photoDetailViewController.photoData = sender as! Photo
        }
    }
}
