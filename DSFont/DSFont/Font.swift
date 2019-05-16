//
//  Font.swift
//  DSFont
//
//  Created by Dimitar Stefanovski on 5/15/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit
import Device

enum FontName: String {
    case OpenSansRegular = "OpenSans-Regular"
    case OpenSansBold = "OpenSans-Bold"
    case OpenSansSemiBoldItalic = "OpenSans-SemiBoldItalic"
    case OpenSansExtraBoldItalic = "OpenSans-ExtraBoldItalic"
    case OpenSansExtraLightItalic = "OpenSans-LightItalic"
    case OpenSansBoldItalic = "OpenSans-BoldItalic"
    case OpenSansLight = "OpenSans-Light"
    case OpenSansSemiBold = "OpenSans-SemiBold"
    case OpenSansItalic = "OpenSans-Italic"
    case OpenSansExtraBold = "OpenSans-ExtraBold"
}

enum FontStyle: String {
    case LargeTitle = "LargeTitle"
    case Title1 = "Title 1"
    case Title2 = "Title 2"
    case Title3 = "Title 3"
    case Headline = "Headline"
    case Body = "Body"
    case Callout = "Callout"
    case Subhead = "Subhead"
    case Footnote = "Footnote"
    case Caption1 = "Caption 1"
    case Caption2 = "Caption 2"
}

struct Font {
    
    var LargeTitle: UIFont?
    var Title1: UIFont?
    var Title2: UIFont?
    var Title3: UIFont?
    var Headline: UIFont?
    var Body: UIFont?
    var Callout: UIFont?
    var Subhead: UIFont?
    var Footnote: UIFont?
    var Caption1: UIFont?
    var Caption2: UIFont?
    
    private var LargeTitleFontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    private var Title1FontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    private var Title2FontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    private var Title3FontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    private var HeadlineFontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    private var BodyFontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    private var CalloutFontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    private var SubheadFontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    private var FootnoteFontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    private var Caption1FontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    private var Caption2FontSizes: [CGFloat] = [10.0, 15.0, 16.0, 17.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0, 18.0]
    
    
    init(_ fontName: FontName) {
        self.setFontNames(fontName: fontName)
        self.setFontSize()
    }
    
    mutating private func setFontNames(fontName: FontName) {
        self.LargeTitle = UIFont(name: fontName.rawValue, size: 10)
        self.Title1 = UIFont(name: fontName.rawValue, size: 10)
        self.Title2 = UIFont(name: fontName.rawValue, size: 10)
        self.Title3 = UIFont(name: fontName.rawValue, size: 10)
        self.Headline = UIFont(name: fontName.rawValue, size: 10)
        self.Body = UIFont(name: fontName.rawValue, size: 10)
        self.Callout = UIFont(name: fontName.rawValue, size: 10)
        self.Subhead = UIFont(name: fontName.rawValue, size: 10)
        self.Footnote = UIFont(name: fontName.rawValue, size: 10)
        self.Caption1 = UIFont(name: fontName.rawValue, size: 10)
        self.Caption2 = UIFont(name: fontName.rawValue, size: 10)
    }
    
    private func setFontSize() {
        switch Device.size() {
        case .unknownSize:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[0])
            self.Title1?.withSize(self.LargeTitleFontSizes[0])
            self.Title2?.withSize(self.LargeTitleFontSizes[0])
            self.Title3?.withSize(self.LargeTitleFontSizes[0])
            self.Headline?.withSize(self.LargeTitleFontSizes[0])
            self.Body?.withSize(self.LargeTitleFontSizes[0])
            self.Callout?.withSize(self.LargeTitleFontSizes[0])
            self.Subhead?.withSize(self.LargeTitleFontSizes[0])
            self.Footnote?.withSize(self.LargeTitleFontSizes[0])
            self.Caption1?.withSize(self.LargeTitleFontSizes[0])
            self.Caption2?.withSize(self.LargeTitleFontSizes[0])
        case .screen3_5Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[1])
            self.Title1?.withSize(self.LargeTitleFontSizes[1])
            self.Title2?.withSize(self.LargeTitleFontSizes[1])
            self.Title3?.withSize(self.LargeTitleFontSizes[1])
            self.Headline?.withSize(self.LargeTitleFontSizes[1])
            self.Body?.withSize(self.LargeTitleFontSizes[1])
            self.Callout?.withSize(self.LargeTitleFontSizes[1])
            self.Subhead?.withSize(self.LargeTitleFontSizes[1])
            self.Footnote?.withSize(self.LargeTitleFontSizes[1])
            self.Caption1?.withSize(self.LargeTitleFontSizes[1])
            self.Caption2?.withSize(self.LargeTitleFontSizes[1])
        case .screen4Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[2])
            self.Title1?.withSize(self.LargeTitleFontSizes[2])
            self.Title2?.withSize(self.LargeTitleFontSizes[2])
            self.Title3?.withSize(self.LargeTitleFontSizes[2])
            self.Headline?.withSize(self.LargeTitleFontSizes[2])
            self.Body?.withSize(self.LargeTitleFontSizes[2])
            self.Callout?.withSize(self.LargeTitleFontSizes[2])
            self.Subhead?.withSize(self.LargeTitleFontSizes[2])
            self.Footnote?.withSize(self.LargeTitleFontSizes[2])
            self.Caption1?.withSize(self.LargeTitleFontSizes[2])
            self.Caption2?.withSize(self.LargeTitleFontSizes[2])
        case .screen4_7Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[3])
            self.Title1?.withSize(self.LargeTitleFontSizes[3])
            self.Title2?.withSize(self.LargeTitleFontSizes[3])
            self.Title3?.withSize(self.LargeTitleFontSizes[3])
            self.Headline?.withSize(self.LargeTitleFontSizes[3])
            self.Body?.withSize(self.LargeTitleFontSizes[3])
            self.Callout?.withSize(self.LargeTitleFontSizes[3])
            self.Subhead?.withSize(self.LargeTitleFontSizes[3])
            self.Footnote?.withSize(self.LargeTitleFontSizes[3])
            self.Caption1?.withSize(self.LargeTitleFontSizes[3])
            self.Caption2?.withSize(self.LargeTitleFontSizes[3])
        case .screen5_5Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[4])
            self.Title1?.withSize(self.LargeTitleFontSizes[4])
            self.Title2?.withSize(self.LargeTitleFontSizes[4])
            self.Title3?.withSize(self.LargeTitleFontSizes[4])
            self.Headline?.withSize(self.LargeTitleFontSizes[4])
            self.Body?.withSize(self.LargeTitleFontSizes[4])
            self.Callout?.withSize(self.LargeTitleFontSizes[4])
            self.Subhead?.withSize(self.LargeTitleFontSizes[4])
            self.Footnote?.withSize(self.LargeTitleFontSizes[4])
            self.Caption1?.withSize(self.LargeTitleFontSizes[4])
            self.Caption2?.withSize(self.LargeTitleFontSizes[4])
        case .screen5_8Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[5])
            self.Title1?.withSize(self.LargeTitleFontSizes[5])
            self.Title2?.withSize(self.LargeTitleFontSizes[5])
            self.Title3?.withSize(self.LargeTitleFontSizes[5])
            self.Headline?.withSize(self.LargeTitleFontSizes[5])
            self.Body?.withSize(self.LargeTitleFontSizes[5])
            self.Callout?.withSize(self.LargeTitleFontSizes[5])
            self.Subhead?.withSize(self.LargeTitleFontSizes[5])
            self.Footnote?.withSize(self.LargeTitleFontSizes[5])
            self.Caption1?.withSize(self.LargeTitleFontSizes[5])
            self.Caption2?.withSize(self.LargeTitleFontSizes[5])
        case .screen6_1Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[6])
            self.Title1?.withSize(self.LargeTitleFontSizes[6])
            self.Title2?.withSize(self.LargeTitleFontSizes[6])
            self.Title3?.withSize(self.LargeTitleFontSizes[6])
            self.Headline?.withSize(self.LargeTitleFontSizes[6])
            self.Body?.withSize(self.LargeTitleFontSizes[6])
            self.Callout?.withSize(self.LargeTitleFontSizes[6])
            self.Subhead?.withSize(self.LargeTitleFontSizes[6])
            self.Footnote?.withSize(self.LargeTitleFontSizes[6])
            self.Caption1?.withSize(self.LargeTitleFontSizes[6])
            self.Caption2?.withSize(self.LargeTitleFontSizes[6])
        case .screen6_5Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[7])
            self.Title1?.withSize(self.LargeTitleFontSizes[7])
            self.Title2?.withSize(self.LargeTitleFontSizes[7])
            self.Title3?.withSize(self.LargeTitleFontSizes[7])
            self.Headline?.withSize(self.LargeTitleFontSizes[7])
            self.Body?.withSize(self.LargeTitleFontSizes[7])
            self.Callout?.withSize(self.LargeTitleFontSizes[7])
            self.Subhead?.withSize(self.LargeTitleFontSizes[7])
            self.Footnote?.withSize(self.LargeTitleFontSizes[7])
            self.Caption1?.withSize(self.LargeTitleFontSizes[7])
            self.Caption2?.withSize(self.LargeTitleFontSizes[7])
        case .screen7_9Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[8])
            self.Title1?.withSize(self.LargeTitleFontSizes[8])
            self.Title2?.withSize(self.LargeTitleFontSizes[8])
            self.Title3?.withSize(self.LargeTitleFontSizes[8])
            self.Headline?.withSize(self.LargeTitleFontSizes[8])
            self.Body?.withSize(self.LargeTitleFontSizes[8])
            self.Callout?.withSize(self.LargeTitleFontSizes[8])
            self.Subhead?.withSize(self.LargeTitleFontSizes[8])
            self.Footnote?.withSize(self.LargeTitleFontSizes[8])
            self.Caption1?.withSize(self.LargeTitleFontSizes[8])
            self.Caption2?.withSize(self.LargeTitleFontSizes[8])
        case .screen9_7Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[9])
            self.Title1?.withSize(self.LargeTitleFontSizes[9])
            self.Title2?.withSize(self.LargeTitleFontSizes[9])
            self.Title3?.withSize(self.LargeTitleFontSizes[9])
            self.Headline?.withSize(self.LargeTitleFontSizes[9])
            self.Body?.withSize(self.LargeTitleFontSizes[9])
            self.Callout?.withSize(self.LargeTitleFontSizes[9])
            self.Subhead?.withSize(self.LargeTitleFontSizes[9])
            self.Footnote?.withSize(self.LargeTitleFontSizes[9])
            self.Caption1?.withSize(self.LargeTitleFontSizes[9])
            self.Caption2?.withSize(self.LargeTitleFontSizes[9])
        case .screen10_5Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[10])
            self.Title1?.withSize(self.LargeTitleFontSizes[10])
            self.Title2?.withSize(self.LargeTitleFontSizes[10])
            self.Title3?.withSize(self.LargeTitleFontSizes[10])
            self.Headline?.withSize(self.LargeTitleFontSizes[10])
            self.Body?.withSize(self.LargeTitleFontSizes[10])
            self.Callout?.withSize(self.LargeTitleFontSizes[10])
            self.Subhead?.withSize(self.LargeTitleFontSizes[10])
            self.Footnote?.withSize(self.LargeTitleFontSizes[10])
            self.Caption1?.withSize(self.LargeTitleFontSizes[10])
            self.Caption2?.withSize(self.LargeTitleFontSizes[10])
        case .screen12_9Inch:
            self.LargeTitle?.withSize(self.LargeTitleFontSizes[11])
            self.Title1?.withSize(self.LargeTitleFontSizes[11])
            self.Title2?.withSize(self.LargeTitleFontSizes[11])
            self.Title3?.withSize(self.LargeTitleFontSizes[11])
            self.Headline?.withSize(self.LargeTitleFontSizes[11])
            self.Body?.withSize(self.LargeTitleFontSizes[11])
            self.Callout?.withSize(self.LargeTitleFontSizes[11])
            self.Subhead?.withSize(self.LargeTitleFontSizes[11])
            self.Footnote?.withSize(self.LargeTitleFontSizes[11])
            self.Caption1?.withSize(self.LargeTitleFontSizes[11])
            self.Caption2?.withSize(self.LargeTitleFontSizes[11])
        }
    }
}



