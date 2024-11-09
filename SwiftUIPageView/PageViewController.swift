//
//  PageViewController.swift
//  SwiftUIPageView
//
//  Created by Angelos Staboulis on 9/11/24.
//

import Foundation
import UIKit

class PageViewController: UIPageViewController,UIPageViewControllerDataSource,UIPageViewControllerDelegate {
    func viewControllerIndex(at index: Int) -> ViewController {
            let pageContentViewController = ViewController()
            pageContentViewController.pageIndex = UInt(index)
            return pageContentViewController
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            var index = (viewController as! ViewController).pageIndex
            if index < 13 {
                index += 1
            } else {
                index = 0
            }
        return viewControllerIndex(at: Int(index))
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            var index = (viewController as! ViewController).pageIndex
            if index == 0 {
                index = 13
            } else {
                index -= 1
            }
        return viewControllerIndex(at: Int(index))
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        let startingViewController = viewControllerIndex(at: 0)
        let viewControllers: NSArray = [startingViewController]

        setViewControllers((viewControllers as! [UIViewController]), direction: .reverse, animated: true, completion: nil)
        
    }
    


}
