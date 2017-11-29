//
//  InternetDetailViewController.swift
//  Jian_CSP
//
//  Created by Li, Jian Hong on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController : UIViewController
{
    //MARK: GUI Controls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
    }
    
    public func setup() -> Void
    {
        
    }
}
