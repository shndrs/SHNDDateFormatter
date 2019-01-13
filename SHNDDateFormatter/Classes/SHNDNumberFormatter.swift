//
//  SHNDNumberFormatter.swift
//  SHNDDateFormatter
//
//  Created by Sahand Raeisi on 1/1/19.
//

import Foundation

public protocol NumberFormatterProtocol {
    var locale: String? { get }
    var number: NSNumber? { get }
    var numberStyle: NumberFormatter.Style? { get }
}


public class NumberBuilder:NumberFormatterProtocol {
    
    public var locale: String?
    public var number: NSNumber?
    public var numberStyle: NumberFormatter.Style?
    
    public typealias BuilderClosure = (NumberBuilder) -> Void
    
    public init(builderClosure: BuilderClosure) {
        builderClosure(self)
    }
}

open class SHNDNumberFormatter {
    
    private(set) var locale:String
    private(set) var number:NSNumber
    private(set) var numberStyle:NumberFormatter.Style
    
    public init?(builder: NumberBuilder) {
        
        if let locale = builder.locale, let number = builder.number , let numberStyle = builder.numberStyle {
            self.locale = locale
            self.number = number
            self.numberStyle = numberStyle
            
        } else {
            return nil
        }
    }
    
    @discardableResult
    public func convert() -> String {
        let locale = Locale(identifier: self.locale)
        let formatter = NumberFormatter()
        formatter.numberStyle = self.numberStyle
        formatter.locale = locale
        return formatter.string(from: number)!
    }
}

