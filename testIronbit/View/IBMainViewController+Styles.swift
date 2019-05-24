//
//  MainViewController+Styles.swift
//  test
//
//  Created by Gmo Ginppian on 5/22/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

extension IBMainViewController {
    
    func setupUI() {
        setupMainVC()
        setupLblAlert()
        setupLblMessage()
        setupTextInput()
    }
    
    func setupMainVC() {
        self.view.backgroundColor = UIColor.white
    }
    
    func setupLblAlert() {
        self.view.addSubview(self.lblAlert)
        self.lblAlert.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,
                                           constant: 0.0).isActive = true
        self.lblAlert.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor,
                                            constant: 0.0).isActive = true
        self.lblAlert.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor,
                                             constant: 0.0).isActive = true
    }
    
    func setupLblMessage() {
        self.view.addSubview(self.lblMessage)
        self.lblMessage.topAnchor.constraint(equalTo: self.lblAlert.bottomAnchor, constant: 55.0).isActive = true
        self.lblMessage.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor,
                                            constant: 0.0).isActive = true
        self.lblMessage.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor,
                                             constant: 0.0).isActive = true
    }
    func setupTextInput() {
        self.view.addSubview(self.textInput)
        self.textInput.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0.0).isActive = true
        self.textInput.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor,
                                              constant: 8.0).isActive = true
        self.textInput.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor,
                                               constant: -8.0).isActive = true
        self.textInput.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
}
