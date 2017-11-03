//
//  SuperHero TableViewController.swift
//  Super Hero Table View
//
//  Created by Casey Gower on 11/2/17.
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class SuperHero_TableViewController: UITableViewController {
    
    private var superHeros = [Array<hero>]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return superHeros.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SuperHeroCell", for: indexPath)

        // Configure the cell...
        let hero = superHeros[indexPath.row]
        cell.textLabel?.text = hero.name

        return cell
    }
    
    struct hero {
        var name: String
        var suitColor: String
        var image: String
        
    }
}
