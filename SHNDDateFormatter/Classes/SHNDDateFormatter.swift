//
//  SHNDDateFormatter.swift
//  SHNDDateFormatter
//
//  Created by Sahand Raeisi on 1/1/19.
//

import Foundation

public class FormatOptions {
    
    public var inputDateString: String?
    public var inputDateFormat: String = "MM-dd-yyyy"
    public var outputDateFormat: String = "MMM d, yyyy"
}

@requires_stored_property_inits
public class CalendarOptions: FormatOptions {
    
    public var inputCalenderIdentifier: NSCalendar.Identifier = .gregorian
    public var outputCalenderIdentifier: NSCalendar.Identifier = .persian
}

@requires_stored_property_inits
public class TimeZoneOptions: CalendarOptions {
    
    public var outputTimeZone: TimeZone = .current
    public var inputTimeZone: TimeZone = .current
}

@requires_stored_property_inits
public class LocaleOptions: TimeZoneOptions {
    
    public var outputLocale: String = NSLocale.current.identifier
    public var inputLocale: String = NSLocale.current.identifier
}

public class DateBuilder: LocaleOptions {
    
    public typealias builderClosure = (DateBuilder) -> ()
    
    public init(builderClosure: builderClosure) {
        
        super.init()
        builderClosure(self)
    }
}

open class SHNDDateFormatter {
    
    private(set) var inputDateString: String
    private(set) var inputDateFormat: String
    private(set) var outputDateFormat: String
    private(set) var inputCalenderIdentifier: NSCalendar.Identifier
    private(set) var outputCalenderIdentifier: NSCalendar.Identifier
    private(set) var inputLocale: String = NSLocale.current.identifier
    private(set) var outputLocale: String = NSLocale.current.identifier
    private(set) var outputTimeZone: TimeZone = .current
    private(set) var inputTimeZone: TimeZone = .current
    
    public init(builder: DateBuilder) {
            
        self.inputDateString = builder.inputDateString ?? ""
        self.inputDateFormat = builder.inputDateFormat
        self.outputDateFormat = builder.outputDateFormat
        self.inputCalenderIdentifier = builder.inputCalenderIdentifier
        self.outputCalenderIdentifier = builder.outputCalenderIdentifier
        self.inputLocale = builder.inputLocale
        self.outputLocale = builder.outputLocale
        self.outputTimeZone = builder.outputTimeZone
        self.inputTimeZone = builder.inputTimeZone
    }
    
    @discardableResult
    public func build() -> String {
        
        let df = DateFormatter()
        df.dateFormat = self.inputDateFormat
        df.calendar = NSCalendar(calendarIdentifier: inputCalenderIdentifier) as Calendar?
        df.timeZone = self.inputTimeZone
        df.locale = NSLocale(localeIdentifier: inputLocale) as Locale
        
        guard let date = df.date(from: self.inputDateString) else {
            return ""
        }
        
        df.calendar = NSCalendar(calendarIdentifier: outputCalenderIdentifier) as Calendar?
        df.timeZone = outputTimeZone
        df.locale = NSLocale(localeIdentifier: outputLocale) as Locale
        df.dateFormat = outputDateFormat
        let newDate = df.string(from: date)
        return newDate
    }
}
