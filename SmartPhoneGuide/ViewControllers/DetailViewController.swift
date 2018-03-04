//
//  DetailViewController.swift
//  SmartPhoneGuide
//
//  Created by Hoang Tuan Anh on 3/4/18.
//  Copyright © 2018 Hoang Tuan Anh. All rights reserved.
//

import UIKit
import MarkdownView

class DetailViewController: UIViewController {
    
    @IBOutlet weak var contentMarkdownView: MarkdownView!
    var content: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentMarkdownView.load(markdown: content)
    }
    
    @IBAction func doneButtonTouched(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
