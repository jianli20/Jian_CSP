//
//  TheInternet.swift
//  Jian_CSP
//
//  Created by Li, Jian Hong on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class InternetMasterViewController : UITableViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide"
        ]
    }()

    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
        
    }
    
    //Mark: - Table view data source
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning INcomplete implementation, retunmber of sections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIndentifier", for: IndexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLael!.text = currentText
        
        return cell
    }
}
