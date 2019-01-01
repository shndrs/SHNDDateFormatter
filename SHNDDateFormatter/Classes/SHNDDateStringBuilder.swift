//
//  SHNDDateStringBuilder.swift
//  SHNDDateFormatter
//
//  Created by Sahand Raeisi on 1/1/19.
//

import Foundation

public protocol SHNDDateStringBuilder {
    var inputDateString:String { get }
    var inputDateFormat:String { get }
    var outputDateFormat:String { get }
    var inputCalenderIdentifier:NSCalendar.Identifier { get }
    var outputCalenderIdentifier:NSCalendar.Identifier { get }
    var outputLocale:String { get }
}

public struct DateBuilder:SHNDDateStringBuilder {
    public var inputDateString: String
    public var inputDateFormat: String
    public var outputDateFormat: String
    public var inputCalenderIdentifier: NSCalendar.Identifier
    public var outputCalenderIdentifier: NSCalendar.Identifier
    public var outputLocale: String
    
    public init(dateString:String,
         inputDateFormat: String,
         outputDateFormat: String,
         inputCalenderIdentifier: NSCalendar.Identifier,
         outputCalenderIdentifier: NSCalendar.Identifier,
         outputLocale: String) {
        
        self.inputDateString = dateString
        self.inputDateFormat = inputDateFormat
        self.outputDateFormat = outputDateFormat
        self.inputCalenderIdentifier = inputCalenderIdentifier
        self.outputCalenderIdentifier = outputCalenderIdentifier
        self.outputLocale = outputLocale
    }
}
