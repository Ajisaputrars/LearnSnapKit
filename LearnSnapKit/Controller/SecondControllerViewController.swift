//
//  SecondControllerViewController.swift
//  LearnSnapKit
//
//  Created by Aji Saputra Raka Siwi on 09/08/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class SecondControllerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var secondView = SecondView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = secondView
        
        secondView.tableView.delegate = self
        secondView.tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        secondView.buttonTest.setTitle("TEST NOW", for: .normal)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestIdentifier", for: indexPath) as! TableViewCell
        return cell
    }
}
