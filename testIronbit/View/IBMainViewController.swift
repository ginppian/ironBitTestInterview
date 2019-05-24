//
//  ViewController.swift
//  testIronbit
//
//  Created by Gmo Ginppian on 5/22/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

class IBMainViewController: UIViewController {
    
    // MARK: - UI
    var lblAlert: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Alert"
        l.textAlignment = .center
        l.backgroundColor = .green
        l.sizeToFit()
        return l
    }()
    
    var lblMessage: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Message"
        l.textAlignment = .center
        l.sizeToFit()
        return l
    }()
    
    var textInput: UITextField = {
        let t = UITextField()
        t.translatesAutoresizingMaskIntoConstraints = false
        t.placeholder = "Put your number string here..."
        t.borderStyle = .bezel
        t.keyboardType = UIKeyboardType.numberPad
        return t
    }()
    
    // MARK: - Propertys
    private let present = IBPresenter()
    
    // MARK: - Delegates
    weak private var validateTextInputDelegate: IBValidateTextInputDelegate?
    weak private var modifyDelegate: IBModifyTextDelegate?

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textInput.delegate = self
        self.present.setAlertMessageDelegate(alertMessagesDelegate: self)
        self.validateTextInputDelegate = present
        self.modifyDelegate = present
        self.setupUI()
    }
}

extension IBMainViewController: IBAlertMessagesDelegate {
    
    func display(_ alert: String, with color: UIColor) {
        self.lblAlert.text = alert
        self.lblAlert.backgroundColor = color
    }
    
    func display(_ numbersModify: String) {
        self.lblMessage.text = numbersModify
    }
    
}

extension IBMainViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var s = String.Empty
        var t = textField.text ?? String.Empty
        
        if let char = string.cString(using: String.Encoding.utf8) {
            let isBackSpace = strcmp(char, "\\b")
            if (isBackSpace == -92) {
                t = String(t.dropLast())
                print(t)
            }
        }
        
        s =  t + string
        print(s)
        self.validateTextInputDelegate?.valid(s)
        self.modifyDelegate?.modify(s: s)
        return true
    }

}
