//
//  SecondView.swift
//  LearnSnapKit
//
//  Created by Aji Saputra Raka Siwi on 09/08/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit
import SnapKit

class SecondView: UIView {
    
    let tableView = UITableView()
    
    let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image"))
        imageView.backgroundColor = .gray
        imageView.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        return imageView
    }()
    
    let imageViewContainer: UIView = {
        let aView = UIView()
        aView.backgroundColor = .green
        return aView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TestIdentifier")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.addSubview(tableView)
        imageViewContainer.addSubview(imageView)
        self.addSubview(imageViewContainer)
        
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.left.equalTo(self)
            make.bottom.equalTo(imageView.snp.top)
            make.right.equalTo(self)
        }
        
        imageViewContainer.snp.makeConstraints { (make) in
            make.bottom.equalTo(self)
            make.height.equalTo(imageView.snp.height)
            make.centerX.equalTo(self)
            make.left.equalTo(self)
            make.right.equalTo(self)
        }
        
        imageView.snp.makeConstraints { (make) in
            make.bottom.equalTo(self)
            make.width.height.equalTo(50)
            make.centerX.equalTo(self)
        }
    }
}
