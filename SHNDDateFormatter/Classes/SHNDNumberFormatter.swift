//
//  SHNDNumberFormatter.swift
//  SHNDDateFormatter
//
//  Created by Sahand Raeisi on 1/1/19.
//

import Foundation

public class SHNDNumberFormatter {
    
    private(set) var locale:String
    private(set) var number:NSNumber
    private(set) var numberStyle:NumberFormatter.Style
    
    public init(locale:String, number:NSNumber, numberStyle:NumberFormatter.Style) {
        self.locale = locale
        self.number = number
        self.numberStyle = numberStyle
    }
    
    @discardableResult
    public func convertedValue() -> String {
        let locale = Locale(identifier: self.locale)
        let formatter = NumberFormatter()
        formatter.numberStyle = self.numberStyle
        formatter.locale = locale
        return formatter.string(from: number)!
    }
}
