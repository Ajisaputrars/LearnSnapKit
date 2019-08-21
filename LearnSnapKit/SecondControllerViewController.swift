//
//  SecondControllerViewController.swift
//  LearnSnapKit
//
//  Created by Aji Saputra Raka Siwi on 09/08/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class SecondControllerViewController: UIViewController {
    
    private var secondView: SecondView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondView = SecondView()
        self.view = secondView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        secondView.buttonTest.setTitle("TEST NOW", for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
