//
//  MasterCardCardType.swift
//  Pods
//
//  Created by Daniel Vancura on 2/17/16.
//
//

public class MasterCardCardType: NSObject, CardType {
    
    private var image: UIImage = UIImage(named: "MasterCard") ?? UIImage()
    
    public func cardTypeName() -> String {
        return "MasterCard"
    }
    
    public func expectedCVCLength() -> Int {
        return 3
    }
    
    public func expectedCardNumberLength() -> Int {
        return 16
    }
    
    public func cardNumberGrouping() -> [Int] {
        return [4,4,4,4]
    }
    
    public func cardTypeImage() -> UIImage {
        return image
    }
    
    public func overrideImageForCardType(image: UIImage) {
        self.image = image
    }
    
    public func checkCardNumberAgainstCardType(cardNumber: CardNumber) -> Bool {
        return ["51","52","53","54","55"].contains(cardNumber.stringValue()[0,2] ?? "")
    }
}