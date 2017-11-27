//
//  Abstration.swift
//  Jian_CSP
//
//  Created by Li, Jian Hong on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class Abstration: UIPageViewController, UIPageViewControllerDataSource
{
    //Mark: Array of subviews
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel: "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(abstractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLevel: "AndGate")
            ]
    }()
        
        //Helper method to retrieve the correct ViewContro
        private func newAbstractionViewController(abstractionLevel : String)  -> UIViewController
        {
            return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
        }
        override public func viewDidLoad()
        {
            super.viewDidLoad()
            dataSource = self
           
            if let firstViewController = orderedAbstractionViews.first
            {
                setViewControllers([firstViewController],
                                               direction: .forward,
                                               animated: true,
                                               completion: nil)
            }
        }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewCotrllerBefore viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
        else
        {
            return orderedAbstractionViews.last
        }
        
        guard orderedAbstractionViews.count > previousIndex
        else
        {
            return nil
        }
        
        return orderedAbstractionViews[previousIndex]
    }
    
        override public func didReceiveMemoryWarning()
        {
        super.didReceiveMemoryWarning()
        
        }
}

