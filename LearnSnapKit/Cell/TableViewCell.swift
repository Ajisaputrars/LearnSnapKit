//
//  TableViewCell.swift
//  LearnSnapKit
//
//  Created by Aji Saputra Raka Siwi on 09/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    let cellView: UIView = {
        let aView = UIView()
        return aView
    }()
    
    let cellImageView: UIImageView = {
        let anImageView = UIImageView(image: UIImage(named: "image"))
        anImageView.contentMode = .scaleAspectFit
        anImageView.backgroundColor = .lightGray
        return anImageView
    }()
    
    let cellLabel: UILabel = {
        let label = UILabel()
        label.text = "Test a text"
        label.backgroundColor = .green
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)        
        setupView()
    }
    
    func setupView(){
        self.addSubview(cellView)
        cellView.addSubview(cellImageView)
        cellView.addSubview(cellLabel)
        
        cellView.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.left.equalTo(self)
            make.right.equalTo(self)
            make.bottom.equalTo(self)
        }

        cellImageView.snp.makeConstraints { (make) in
            make.top.equalTo(cellView)
            make.left.equalTo(cellView)
            make.bottom.equalTo(cellView)
            make.size.equalTo(CGSize(width: 100, height: 100)).priority(.high)
        }
        
        cellLabel.snp.makeConstraints { (make) in
            make.left.equalTo(cellImageView.snp.right).offset(10)
            make.top.equalTo(cellView)
            make.right.equalTo(cellView)
            make.bottom.equalTo(cellView)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: true)

        // Configure the view for the selected state
    }
}
