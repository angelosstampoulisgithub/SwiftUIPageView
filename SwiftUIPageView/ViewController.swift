//
//  ViewController.swift
//  SwiftUIPageView
//
//  Created by Angelos Staboulis on 9/11/24.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    var pageIndex: UInt = 0
    var imageView = UIImageView(frame: UIScreen.main.bounds)
    var image:[UIImage] = [UIImage(resource: .komotini1),UIImage(resource: .komotini2),UIImage(resource: .komotini3),UIImage(resource: .komotini4),UIImage(resource: .komotini5),UIImage(resource: .komotini6),UIImage(resource: .komotini7),UIImage(resource: .komotini8),UIImage(resource: .komotini9),UIImage(resource: .komotini10),UIImage(resource: .komotini11),UIImage(resource: .komotini12),UIImage(resource: .komotini13),UIImage(resource: .komotini14)]
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image[Int(pageIndex)]
        self.view.addSubview(imageView)
       
        // Do any additional setup after loading the view.
    }


}

