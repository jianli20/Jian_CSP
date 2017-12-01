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
    
    private lazy var addresses : [String] = []
    
    private func setup() -> Void
    {
        addresses = [
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com"
        ]
        
        if let splitView = splitViewController
        {
            let currentControlllers = splitView.viewControllersdetailViewController = currentControllers[0] as?
            InternetDetailViewController
        }
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
    
    
        //MARK: Handle the internal transfer
        override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
            if segue.identifier! == "showDetail"
            {
                if let indexPath = self.tableView.indexPathForSelectedRow
                {
                    let urlString = addresses[indexPath.row]
                    let pageText : String
                    
                    if indexPath.row == 0
                    {
                        //TODO: Replace with your definitions - great time to use the """ operator
                        pageText = "All the definitions you wrote....."
                    }
                    else
                    {
                        pageText = internetTopics[indexPath.row]
                    }
                    
                    let controller = segue.destination as!
                        InternetDetailViewController
                    
                    controller.detailAddress = urlString
                    controller.detailText = pageText
                    controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                    controller.navigationItem.leftItemsSupplementBackButton = true
                }
            }
            
        }
    }
}
