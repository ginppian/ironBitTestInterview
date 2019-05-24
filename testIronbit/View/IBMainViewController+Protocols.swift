//
//  IBMainViewController+Protocols.swift
//  test
//
//  Created by Gmo Ginppian on 5/22/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

/*
 From: IBMainViewController
 To(Implement): IBPresenter
 Message: Display alert message with text(message) and color
 */
protocol IBValidateTextInputDelegate: NSObjectProtocol  {
    func valid(_ s: String) -> Bool
    //func isAscending(_ s: String) -> Bool
}

/*
 From: IBMainViewController
 To(Implement): IBPresenter
 Message: modify
 */
protocol IBModifyTextDelegate: NSObjectProtocol {
    func modify(s: String) -> String
}
