//
//  ViewController.swift
//  MyTableView
//
//  Created by Kieon Moore on 8/4/20.
//  Copyright © 2020 Kieon Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let KieronsGames = ["NBA 2K20","COD Modern Warfare","Madden 20","DBX 2","Uncharted 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return KieronsGames.count
    }

    func tableView(_ tableview: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "mycellID")
        
        cell?.textLabel?.text = KieronsGames[IndexPath.row]
        
        return cell!
    }
}

