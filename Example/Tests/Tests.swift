import XCTest
import Foundation
@testable import SHNDDateFormatter

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testSHNDDateFormatter() {
        
        let expected = "冬月 26, 0035"
        
        let builderObject = DateBuilder { (builder) in
            builder.inputDateString = "01-01-2019"
            builder.inputDateFormat = "MM-dd-yyyy"
            builder.outputDateFormat = "MMM d, yyyy"
            builder.inputCalenderIdentifier = .gregorian
            builder.outputCalenderIdentifier = .chinese
            builder.outputLocale = "zh_Hans_CN"
        }
        let convertedDate = SHNDDateFormatter(builder: builderObject)?.build()
        
        XCTAssertEqual(expected, convertedDate)
    }
    
    func testSHNDNumberFormatter() {
        
        let expected = "150,000.45 US dollars"
        
        let builderObject = NumberBuilder { (builder) in
            builder.locale = "en_US"
            builder.number = NSNumber(value: 150000.45)
            builder.numberStyle = .currencyPlural
        }
        let convertedNumber = SHNDNumberFormatter(builder: builderObject)?.convert()
        
        XCTAssertEqual(expected, convertedNumber)
    }
    
}
