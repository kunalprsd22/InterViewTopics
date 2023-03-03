//
//  ViewController.swift
//  InterViewPreparationTopics
//
//  Created by Appinventiv on 04/08/22.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let obj = InterviewTest()
        obj.greeting
        
        
    }
}

