//
//  IBPresenter+Protocols.swift
//  test
//
//  Created by Gmo Ginppian on 5/22/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

/*
 From: IBPresenter
 To: IBMainViewController
 Message: displayAlert and displayTextInput
 */
protocol IBAlertMessagesDelegate: NSObjectProtocol {
    func display(_ alert: String, with color: UIColor)
    func display(_ numbersModify: String)
}
