# SHNDDateFormatter

[![CI Status](https://img.shields.io/travis/sahandraeisi1994@gmail.com/SHNDDateFormatter.svg?style=flat)](https://travis-ci.org/sahandraeisi1994@gmail.com/SHNDDateFormatter)
[![Version](https://img.shields.io/cocoapods/v/SHNDDateFormatter.svg?style=flat)](https://cocoapods.org/pods/SHNDDateFormatter)
[![License](https://img.shields.io/cocoapods/l/SHNDDateFormatter.svg?style=flat)](https://cocoapods.org/pods/SHNDDateFormatter)
[![Platform](https://img.shields.io/cocoapods/p/SHNDDateFormatter.svg?style=flat)](https://cocoapods.org/pods/SHNDDateFormatter)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

# SHNDDateFormatter

actually this so simple:

first you should build an object of what kinda format that you want, then use it wherever you want,
in example i just printed it. 😊😊

```Swift
    
    let builderObject = DateBuilder { (builder) in
    
        builder.inputDateString = "01-01-2019"
        builder.inputDateFormat = "MM-dd-yyyy"
        builder.outputDateFormat = "MMM d, yyyy"
        builder.inputCalenderIdentifier = .gregorian
        builder.outputCalenderIdentifier = .chinese
        builder.outputLocale = "zh_Hans_CN"
    }
    
    let stringConvertedDate = SHNDDateFormatter(builder: builderObject)?.build()
    print(stringConvertedDate)
```

inputString = "01-01-2019",                       outputString = "冬月 26, 0035"

# SHNDNumberFormatter

```Swift

let convertedNumber = SHNDNumberFormatter(locale: "en_US",
                                          number: NSNumber(value: 150000.45),
                                          numberStyle: .currencyPlural).convertValue()
```
inputNumber = 150000.45 ,
outputString = "150,000.45 US dollars"


```Swift
let convertedNumber = SHNDNumberFormatter(locale: "fa_IR",
                                          number: NSNumber(value: 0.15),
                                          numberStyle: .percent).convertValue()
```
inputNumber = 0.15 ,
outputString = "۱۵%"


more about NumberFormatter.Style 👉🏻 [Apple Document](https://developer.apple.com/documentation/foundation/numberformatter/style)


## Requirements
swift 4.0 or later
## Installation

SHNDDateFormatter is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SHNDDateFormatter'
```

## Author

sahandraeisi1994@gmail.com, sahandraeisi@yahoo.com

## License

SHNDDateFormatter is available under the MIT license. See the LICENSE file for more info.
