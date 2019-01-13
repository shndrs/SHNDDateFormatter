//
//  SHNDDateFormatter.swift
//  SHNDDateFormatter
//
//  Created by Sahand Raeisi on 1/1/19.
//

import Foundation

fileprivate protocol SHNDDateStringBuilder {
    var inputDateString: String? { get }
    var inputDateFormat: String? { get }
    var outputDateFormat: String? { get }
    var inputCalenderIdentifier: NSCalendar.Identifier? { get }
    var outputCalenderIdentifier: NSCalendar.Identifier? { get }
    var outputLocale: String? { get }
}

public class DateBuilder: SHNDDateStringBuilder {
    public var inputDateString: String?
    public var inputDateFormat: String?
    public var outputDateFormat: String?
    public var inputCalenderIdentifier: NSCalendar.Identifier?
    public var outputCalenderIdentifier: NSCalendar.Identifier?
    public var outputLocale: String?
    
    public typealias builderClosure = (DateBuilder) -> ()
    
    public init(builderClosure: builderClosure) {
        builderClosure(self)
    }
}

open class SHNDDateFormatter {
    
    private(set) var inputDateString: String
    private(set) var inputDateFormat: String
    private(set) var outputDateFormat: String
    private(set) var inputCalenderIdentifier: NSCalendar.Identifier
    private(set) var outputCalenderIdentifier: NSCalendar.Identifier
    private(set) var outputLocale: String
    
    public init?(builder: DateBuilder) {
        
        if let ids = builder.inputDateString,
            let idf = builder.inputDateFormat,
            let odf = builder.outputDateFormat,
            let ici = builder.inputCalenderIdentifier,
            let oci = builder.outputCalenderIdentifier,
            let ol = builder.outputLocale {
            
            self.inputDateString = ids
            self.inputDateFormat = idf
            self.outputDateFormat = odf
            self.inputCalenderIdentifier = ici
            self.outputCalenderIdentifier = oci
            self.outputLocale = ol
            
        } else {
            return nil
        }
    }
    
    @discardableResult
    public func build() -> String {
        
        let df = DateFormatter()
        df.dateFormat = self.inputDateFormat
        df.calendar = NSCalendar(calendarIdentifier: inputCalenderIdentifier) as Calendar?
        
        guard let date = df.date(from: self.inputDateString) else {
            return ""
        }
        
        df.locale = NSLocale(localeIdentifier: outputLocale) as Locale
        df.calendar = NSCalendar(calendarIdentifier: outputCalenderIdentifier) as Calendar?
        df.dateFormat = outputDateFormat
        let newDate = df.string(from: date)
        return newDate
    }
}
