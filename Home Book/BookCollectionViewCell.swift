//
//  BookCollectionViewCell.swift
//  Home Book
//
//  Created by KOFI on 5/30/20.
//  Copyright © 2020 fiifi_gh. All rights reserved.
//

import UIKit

class BookCollectionCell: UICollectionViewCell {
    
    static let reuseId = "bookcell"
    
    let bookCover = UIImageView()
    let bookTitle =  UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(book: Book){
        bookCover.image = book.image
        bookTitle.text = book.title
    }
    
    func configureCell(){
        bookCover.translatesAutoresizingMaskIntoConstraints = false
        bookTitle.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bookCover)
        addSubview(bookTitle)
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
           bookCover.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
           bookCover.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
           bookCover.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
           bookCover.heightAnchor.constraint(equalToConstant: 150),
           
           bookTitle.topAnchor.constraint(equalTo: bookCover.bottomAnchor, constant: 12),
           bookTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
           bookTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
           bookTitle.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
}
