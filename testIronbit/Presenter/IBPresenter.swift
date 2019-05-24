//
//  IBPresenter.swift
//  test
//
//  Created by Gmo Ginppian on 5/22/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

class IBPresenter: NSObject {
    
    weak private var alertMessagesDelegate: IBAlertMessagesDelegate?

    func setAlertMessageDelegate(alertMessagesDelegate: IBAlertMessagesDelegate) {
        self.alertMessagesDelegate = alertMessagesDelegate
    }
}

extension IBPresenter: IBValidateTextInputDelegate {
    
    func valid(_ s: String) -> Bool {
        let s2 = s.lowercased()
        let arrS = Array(s2)
        let setS = Set(arrS)
        let arrSetS = Array(setS)
        let newS = String(arrSetS)
        
        if s2.count == newS.count {
            self.alertMessagesDelegate?.display(IBAlertMessage.green.rawValue, with: .green)
            return true
        } else {
            self.alertMessagesDelegate?.display(IBAlertMessage.red.rawValue, with: .red)
            return false
        }
    }
    
}

extension IBPresenter: IBModifyTextDelegate {
    func modify(s: String) -> String {
        
        let arrStatic = Array(s)
        var arrPop = arrStatic
        var arrNew = [Character]()
        var i = 0
        
        let limit = s.count / 2
        var count = 0
        let par = s.count % 2
        
        while count < limit {
            arrNew.append(arrStatic[i])
            
            let j = arrPop.count - 1
            arrNew.append(arrPop[j])
            arrPop.removeLast()
            
            i += 1
            count += 1
        }
        
        if par == 1 {
            arrNew.append(arrPop.last!)
        }
        
        let sNew = String(arrNew)
        print(sNew)
        
        self.alertMessagesDelegate?.display(sNew)
        return sNew
    }
}
