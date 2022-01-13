//
//  BookCell.swift
//  HW4.6.2
//
//  Created by Azamat Sarinzhiev on 13/1/22.
//

import Foundation
import UIKit
import SnapKit


class CustomCell: UICollectionViewCell {
    
    lazy var image: UIImageView = {
        let view = UIImageView()
        return view
    }()
    

    
    lazy var price: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 21, weight: .bold)
        view.textColor = UIColor(red: 238/255, green: 129/255, blue: 176/255, alpha: 1)
        view.textAlignment = .center
        return view
    }()
    
    lazy var author: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 23, weight: .semibold)
        view.textColor = UIColor(red: 223/255, green: 223/255, blue: 224/255, alpha: 1)
        return view
    }()
    
    lazy var titleView: UIView = {
        let view = UIView()
        return view
    }()
    

    
    override func layoutSubviews() {
        addSubview(image)
        image.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
        }
        
        addSubview(price)
        price.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalTo(image.snp.bottom)
            make.height.equalToSuperview().multipliedBy(0.08)
        }
        

        
        addSubview(author)
        author.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(price.snp.bottom)
            make.height.equalToSuperview().multipliedBy(0.06)
        }
        
        addSubview(titleView)
        titleView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(author.snp.bottom)
            make.height.equalToSuperview().multipliedBy(0.15)
        }


    }
}
