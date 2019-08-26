//
//  ViewController.swift
//  Scroll4
//
//  Created by AnhDCT on 8/19/19.
//  Copyright © 2019 AnhDCT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var page: UIPageControl!
    @IBOutlet weak var scroll: UIScrollView!
    private var slides = [Slide]()
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll.delegate = self
        slides = setupSlides()
        setupFrame(slides: slides)
        // Do any additional setup after loading the view.
    }
    private func setupSlides() -> [Slide]{
        let slide1 = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.backgroundColor = .red
        let slide2 = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.backgroundColor = .blue
        let slide3 = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide3.backgroundColor = .gray
        return [slide1,slide2,slide3]
    }
    private func setupFrame(slides:[Slide])  {
        scroll.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scroll.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        for i in 0..<slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scroll.addSubview(slides[i])
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentPage = round(scrollView.contentOffset.x/view.frame.width)
        page.currentPage = Int(currentPage)
    }
    
    
    @IBAction func pageControll(_ sender: UIPageControl) {
        scroll.contentOffset.x = CGFloat(sender.currentPage) * view.frame.width
    }
    

}

