//
/**
* Webkul Software.
* @package  ThreadUse
* @Category Webkul
* @author Webkul <support@webkul.com>
* FileName: CustomTextFieldController.swift
* @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
* @license https://store.webkul.com/license.html ASL Licence
* @link https://store.webkul.com/license.html

*/


import UIKit

class CustomTextFieldController: UIViewController {

    @IBOutlet weak var control: FirstResponderControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        control.addTarget(control, action: #selector(becomeFirstResponder), for: .touchUpInside)
    }
    
}
