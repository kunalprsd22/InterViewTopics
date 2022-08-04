//
//  CombineObserveVC.swift
//  ThreadUse
//
//  Created by Admin on 07/08/21.
//  Copyright © 2021 Webkul. All rights reserved.
//

import UIKit
import Combine

class CombineObserveVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let blogPostPublisher = NotificationCenter.Publisher(center: .default, name: .newBlogPost, object: nil)
    }
    

}


extension Notification.Name {
     static let newBlogPost = Notification.Name("new_blog_post")
 }
