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
    let box = UIView()
    let buttonTest = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("init(frame: CGRect)")
        
        setupView()
    }
    
    private func setupView(){
        self.backgroundColor = .white
        box.backgroundColor = .red
        
        buttonTest.setTitle("TEST", for: .normal)
        buttonTest.setTitle("TOUCHED", for: .highlighted)
                
        self.addSubview(box)
        box.addSubview(buttonTest)
        
        box.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.left.equalTo(self).offset(20)
            make.bottom.equalTo(self).offset(-20)
            make.right.equalTo(self).offset(-20)
            
        }
        
        buttonTest.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(box).offset(20)
            make.left.equalTo(box).offset(20)
            make.bottom.equalTo(box).offset(-20)
            make.right.equalTo(box).offset(-20)
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
