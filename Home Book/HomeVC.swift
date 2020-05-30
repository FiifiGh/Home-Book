//
//  ViewController.swift
//  Home Book
//
//  Created by KOFI on 5/29/20.
//  Copyright © 2020 fiifi_gh. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    var books: [Book] = [
        Book(image: UIImage(named: "adventurs_unknown")!, title: "Adventures Unknown"),
        Book(image: UIImage(named: "alpha_fights")!, title: "Alpha Fights"),
        Book(image: UIImage(named: "black_panther")!, title: "Black Panther"),
        Book(image: UIImage(named: "forbidden_worlds")!, title: "Forbidden Worlds"),
        Book(image: UIImage(named: "star-trek")!, title: "Star Trek"),
        Book(image: UIImage(named: "vault_horror")!, title: "Vault Horror"),
        Book(image: UIImage(named: "x-men")!, title: "X-Men"),
        Book(image: UIImage(named: "adventurs_unknown")!, title: "Adventures Unknown"),
        Book(image: UIImage(named: "alpha_fights")!, title: "Alpha Fights"),
        Book(image: UIImage(named: "black_panther")!, title: "Black Panther"),
        Book(image: UIImage(named: "forbidden_worlds")!, title: "Forbidden Worlds"),
        Book(image: UIImage(named: "star-trek")!, title: "Star Trek"),
        Book(image: UIImage(named: "vault_horror")!, title: "Vault Horror"),
        Book(image: UIImage(named: "x-men")!, title: "X-Men"),
        Book(image: UIImage(named: "adventurs_unknown")!, title: "Adventures Unknown"),
        Book(image: UIImage(named: "alpha_fights")!, title: "Alpha Fights"),
        Book(image: UIImage(named: "black_panther")!, title: "Black Panther"),
        Book(image: UIImage(named: "forbidden_worlds")!, title: "Forbidden Worlds"),
        Book(image: UIImage(named: "star-trek")!, title: "Star Trek"),
        Book(image: UIImage(named: "vault_horror")!, title: "Vault Horror"),
        Book(image: UIImage(named: "x-men")!, title: "X-Men"),
        
    ]
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureNavBar()
        configureCollectionView()
        books.shuffle()
    }
    
    func configureNavBar(){
        title = "Home Reader"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func configureCollectionView(){
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createThreeColumnFlowLayout(in: view))
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        collectionView.register(BookCollectionCell.self, forCellWithReuseIdentifier: BookCollectionCell.reuseId)
        collectionView.backgroundColor = .systemBackground
    }


}

extension HomeVC: UICollectionViewDataSource,UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BookCollectionCell.reuseId, for: indexPath) as! BookCollectionCell
        cell.set(book: books[indexPath.row])
        return cell
    }
    
    

 func createThreeColumnFlowLayout(in view: UIView)->UICollectionViewFlowLayout{
            
            let width                           = view.bounds.width
            let padding: CGFloat                = 12
            let minimumItemSpacing: CGFloat     = 10
            let availableWidth                  = (width - (padding * 2)) - (minimumItemSpacing * 2)
            let itemWidth                       = availableWidth / 3
            
            let flowLayout                      = UICollectionViewFlowLayout()
            flowLayout.sectionInset             = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
            flowLayout.itemSize                 = CGSize(width: itemWidth, height: 180)
            
            return flowLayout
        }
    

    
    
}

