# SHNDDateFormatter

![swift-version](https://img.shields.io/badge/Swift-4-43bc59.svg)
[![Version](https://img.shields.io/cocoapods/v/SHNDDateFormatter.svg?style=flat)](https://cocoapods.org/pods/SHNDDateFormatter)
[![License](https://img.shields.io/cocoapods/l/SHNDDateFormatter.svg?style=flat)](https://cocoapods.org/pods/SHNDDateFormatter)
[![Platform](https://img.shields.io/cocoapods/p/SHNDDateFormatter.svg?style=flat)](https://cocoapods.org/pods/SHNDDateFormatter)

<img src="https://raw.githubusercontent.com/CocoaPods/shared_resources/master/img/CocoaPods-Logo-Highlight.png" width="128px" height="32px" />

# How to Use

<p>Actually it's so simple:</p>

First you should build an object of what kinda format that you want, then use it wherever you want,
in example i just printed it. 😊😊

<p>Let's import SHNDDateFormatter</p>

```Swift
import SHNDDateFormatter

```
<p>Then 👇🏻</p>

```Swift
    let builderObject = DateBuilder { (builder) in
    
        builder.inputDateString = "01-01-2019"
        builder.inputDateFormat = "MM-dd-yyyy"
        builder.outputDateFormat = "MMM d, yyyy"
        builder.inputCalenderIdentifier = .gregorian
        builder.outputCalenderIdentifier = .chinese
        builder.outputLocale = "zh_Hans_CN"
    }
    
    let stringConvertedDate = SHNDDateFormatter(builder: builderObject).build()
    print(stringConvertedDate)
```

inputString = "01-01-2019",                       outputString = "冬月 26, 0035"

# SHNDNumberFormatter

```Swift

let builderObject = NumberBuilder { (builder) in
    builder.locale = "en_US"
    builder.number = NSNumber(value: 150000.45)
    builder.numberStyle = .currencyPlural
}

let convertedValue = SHNDNumberFormatter(builder: builderObject)?.convert()
print(convertedValue)
```
inputNumber = 150000.45 ,
outputString = "150,000.45 US dollars"


```Swift

let builderObject = NumberBuilder { (builder) in
    builder.locale = "fa_IR"
    builder.number = NSNumber(value: 0.15)
    builder.numberStyle = .percent
}

let convertedValue = SHNDNumberFormatter(builder: builderObject)?.convert()
print(convertedValue)
```
inputNumber = 0.15 ,
outputString = "۱۵%"

## input = 1235

| Style  | en_US Locale | fa_IR Locale |
| ------------- | ------------- | ------------- |
| .none   | nil  | nil  |
| .decimal  | 1,235  | ۱٬۲۳۵  |
| .percent  | 123,500%  | ۱۲۳٬۵۰۰٪  |
| .scientific  | 1.235E3  | ۱٫۲۳۵×۱۰^۳  |
| .spellOut  | one thousand two hundred thirty-five  |  یک هزار و دویست و سی و پنج  |
| .ordinal  | 1,235th  | ۱٬۲۳۵.  |
| .currency  | $1,235.00  |  ریال۱٬۲۳۵  |
| .currencyAccounting  | $1,235.00  | ‎ریال ۱٬۲۳۵  |
| .currencyISOCode  | USD1,235.00  | IRR۱٬۲۳۵  |
| .currencyPlural  | 1,235.00 US dollars  | ۱٬۲۳۵ ریال ایران  |

Just enter your locale and enjoy 😉.
More about NumberFormatter.Style 👉🏻 [Apple Document](https://developer.apple.com/documentation/foundation/numberformatter/style)

## Requirements
<p>iOS 9.0+</p>
<p>Xcode 10.1</p>  
<p>Swift 4.0 or later</p>

## Installation

SHNDDateFormatter is available through [CocoaPods](https://cocoapods.org/pods/SHNDDateFormatter). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SHNDDateFormatter'
```

## Author

sahandraeisi1994@gmail.com, sahandraeisi@yahoo.com

## License

SHNDDateFormatter is available under the MIT license. See the LICENSE file for more info.
