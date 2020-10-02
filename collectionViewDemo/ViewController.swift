//
//  ViewController.swift
//  collectionViewDemo
//
//  Created by Benjamin Hillard on 10/1/20.
//  Copyright © 2020 Benjamin Hillard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let albums = ["altj","bestcoast","Circles","Igor", "skiptracing", "drdog","flecc","nue","tour","vun","cherry","good"]

    @IBOutlet weak var albumCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumCollectionView.delegate = self
        albumCollectionView.dataSource = self
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return albums.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = albumCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! AlbumCell
        
        cell.albumImageView.image = UIImage(named: albums[indexPath.row])
        
        
        return cell
    }
    
    
    
}
