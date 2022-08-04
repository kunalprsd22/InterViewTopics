//
//  FirstResponderControl.swift
//  Display Keyboard on Tap Example
//
//  Created by Stephen Groom on 28/07/2016.
//  Copyright © 2016 Stephen Groom. All rights reserved.
//

import UIKit


class FirstResponderControl: UIControl, UIKeyInput {
    
    
    private var _inputView: UIView?
    override var inputView: UIView? {
        get {
            return _inputView
        }
        set {
            _inputView = newValue
        }
    }

    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    func insertText(_ text: String) {
        print("text ", text)
    }
    
    func deleteBackward() {
        print("backpress")
    }
    
    var hasText:Bool {
        return true
    }
}
