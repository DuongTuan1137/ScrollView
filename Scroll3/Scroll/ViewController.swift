//
//  ViewController.swift
//  Scroll
//
//  Created by AnhDCT on 8/18/19.
//  Copyright © 2019 AnhDCT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll.delegate = self
        scroll.maximumZoomScale = 4
        scroll.minimumZoomScale = 0.5
        scroll.zoomScale = 0.5
        // Do any additional setup after loading the view.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return img
    }

    @IBAction func zoom(_ sender: UIStepper) {
        scroll.zoomScale = CGFloat(sender.value/2)
    }
    
}

