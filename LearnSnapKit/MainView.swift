//
//  MainView.swift
//  LearnSnapKit
//
//  Created by Aji Saputra Raka Siwi on 09/08/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class MainView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        print("init(frame: CGRect)")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("init?(coder aDecoder: NSCoder)")
        
        self.backgroundColor = .blue
    }
}
