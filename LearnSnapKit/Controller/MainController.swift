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
        mainView = view as? MainView
        setupNavigationBar()
    }
    
    func setupNavigationBar(){
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Test", style: .plain, target: nil, action: nil)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        let secondViewController = SecondControllerViewController()
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
