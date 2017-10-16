//
//  ColorsViewController.swift
//  Colors
//
//  Created by David Auger on 10/16/17.
//  Copyright © 2017 David Auger. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var colorsTableView: UITableView!
    
    let colors: [ ( String, UIColor ) ] = [ (    "red",    UIColor.red ),
                                            ( "orange", UIColor.orange ),
                                            ( "yellow", UIColor.yellow ),
                                            (  "green",  UIColor.green ),
                                            (   "blue",   UIColor.blue ),
                                            ( "purple", UIColor.purple ),
                                            (  "brown",  UIColor.brown ) ]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        colorsTableView.dataSource = self
        colorsTableView.delegate   = self
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections( in tableView: UITableView ) -> Int
    {
        return 1
    }
    
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int ) -> Int
    {
        return colors.count
    }
    
    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath ) -> UITableViewCell
    {
        let cell: UITableViewCell = tableView.dequeueReusableCell( withIdentifier: "colorCell", for: indexPath )
        let ( name, val ) = colors[ indexPath.row ]
        cell.textLabel?.text = name
        cell.backgroundColor = val
        return cell
    }
}
