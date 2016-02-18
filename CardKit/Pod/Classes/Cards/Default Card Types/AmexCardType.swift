//
//  AmexCardType.swift
//  Pods
//
//  Created by Daniel Vancura on 2/17/16.
//
//

import UIKit

public class AmexCardType: NSObject, CardType {
    private var image: UIImage = UIImage(named: "Amex") ?? UIImage()
    
    public func cardTypeName() -> String {
        return "Amex"
    }
    
    public func expectedCVCLength() -> Int {
        return 4
    }
    
    public func expectedCardNumberLength() -> Int {
        return 15
    }
    
    public func cardNumberGrouping() -> [Int] {
        return [4,6,5]
    }
    
    public func cardTypeImage() -> UIImage {
        return image
    }
    
    public func overrideImageForCardType(image: UIImage) {
        self.image = image
    }
    
    public func checkCardNumberAgainstCardType(cardNumber: CardNumber) -> Bool {
        if let val = cardNumber.stringValue()[0,2] where ["34","37"].contains(val) {
            return true
        }
        return false
    }
}
