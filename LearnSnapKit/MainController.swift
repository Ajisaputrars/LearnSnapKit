//
//  ViewController.swift
//  LearnSnapKit
//
//  Created by Aji Saputra Raka Siwi on 6/21/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    private var mainView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainView = view as! MainView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        let secondViewController = SecondControllerViewController()
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
