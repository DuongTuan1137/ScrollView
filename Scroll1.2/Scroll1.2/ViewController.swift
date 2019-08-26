//
//  ViewController.swift
//  Scroll1.2
//
//  Created by AnhDCT on 8/20/19.
//  Copyright © 2019 AnhDCT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var txt: UITextField!
    
    @IBOutlet weak var scroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        scroll.contentOffset.y = scroll.contentOffset.y + 220
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        scroll.contentOffset.y = scroll.contentOffset.y - 220
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

