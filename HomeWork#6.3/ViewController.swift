//
//  ViewController.swift
//  HomeWork#6.3
//
//  Created by Эмир Кармышев on 25/1/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CastomCell", for: indexPath) as! CastomCell
        
        cell.backgroundColor = .black
        cell.label.text = String(indexPath.row)
        
        return cell
    }
    

    @IBOutlet weak var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CollectionView.delegate = self
        CollectionView.dataSource = self
        
    }


}

