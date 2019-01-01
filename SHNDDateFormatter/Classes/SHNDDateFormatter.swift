//
//  SHNDDateFormatter.swift
//  SHNDDateFormatter
//
//  Created by Sahand Raeisi on 1/1/19.
//

import Foundation

open class SHNDDateFormatter {
    
    private(set) var inputDateString: String
    private(set) var inputDateFormat: String
    private(set) var outputDateFormat: String
    private(set) var inputCalenderIdentifier: NSCalendar.Identifier
    private(set) var outputCalenderIdentifier: NSCalendar.Identifier
    private(set) var outputLocale: String
    
    init(builder:SHNDDateStringBuilder) {
        self.inputDateString = builder.inputDateString
        self.inputDateFormat = builder.inputDateFormat
        self.outputDateFormat = builder.outputDateFormat
        self.inputCalenderIdentifier = builder.inputCalenderIdentifier
        self.outputCalenderIdentifier = builder.outputCalenderIdentifier
        self.outputLocale = builder.outputLocale
    }
    
    @discardableResult public func create() -> String {
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
