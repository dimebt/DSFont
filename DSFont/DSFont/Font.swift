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
    
    private var LargeTitleFontSizes: [CGFloat] = [33.0, 33.0, 33.0, 33.0, 33.0, 33.0, 33, 33.0, 33.0, 33.0, 33.0, 33.0]
    private var Title1FontSizes: [CGFloat] = [27.0, 27.0, 27.0, 27.0, 27.0, 27.0, 27.0, 27.0, 27.0, 27.0, 27.0, 27.0]
    private var Title2FontSizes: [CGFloat] = [21.0, 21.0, 21.0, 21.0, 21.0, 21.0, 21.0, 21.0, 21.0, 21.0, 21.0, 21.0]
    private var Title3FontSizes: [CGFloat] = [19.0, 19.0, 19.0, 19.0, 19.0, 19.0, 19.0, 19.0, 19.0, 19.0, 19.0, 19.0]
    private var HeadlineFontSizes: [CGFloat] = [16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0]
    private var BodyFontSizes: [CGFloat] = [16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0]
    private var CalloutFontSizes: [CGFloat] = [15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0]
    private var SubheadFontSizes: [CGFloat] = [14.0, 14.0, 14.0, 14.0, 14.0, 14.0, 14.0, 14.0, 14.0, 14.0, 14.0, 14.0]
    private var FootnoteFontSizes: [CGFloat] = [12.0, 12.0, 12.0, 12.0, 12.0, 12.0, 12.0, 12.0, 12.0, 12.0, 12.0, 12.0]
    private var Caption1FontSizes: [CGFloat] = [11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0]
    private var Caption2FontSizes: [CGFloat] = [11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0]
    
    
    init(_ fontName: FontName) {
        self.setFontNames(fontName: fontName)
    }
   
    mutating private func setFontSize(fontName: FontName, at index: Int) {
        self.LargeTitle = UIFont(name: fontName.rawValue, size: self.LargeTitleFontSizes[index])
        self.Title1 = UIFont(name: fontName.rawValue, size: self.Title1FontSizes[index])
        self.Title2 = UIFont(name: fontName.rawValue, size: self.Title2FontSizes[index])
        self.Title3 = UIFont(name: fontName.rawValue, size: self.Title3FontSizes[index])
        self.Headline = UIFont(name: fontName.rawValue, size: self.HeadlineFontSizes[index])
        self.Body = UIFont(name: fontName.rawValue, size: self.BodyFontSizes[index])
        self.Callout = UIFont(name: fontName.rawValue, size: self.CalloutFontSizes[index])
        self.Subhead = UIFont(name: fontName.rawValue, size: self.SubheadFontSizes[index])
        self.Footnote = UIFont(name: fontName.rawValue, size: self.FootnoteFontSizes[index])
        self.Caption1 = UIFont(name: fontName.rawValue, size: self.Caption1FontSizes[index])
        self.Caption2 = UIFont(name: fontName.rawValue, size: self.Caption2FontSizes[index])
    }
    
    mutating private func setFontNames(fontName: FontName) {
        switch Device.size() {
        case .unknownSize:
            self.setFontSize(fontName: fontName, at: 0)
        case .screen3_5Inch:
            self.setFontSize(fontName: fontName, at: 1)
        case .screen4Inch:
            self.setFontSize(fontName: fontName, at: 2)
        case .screen4_7Inch:
            self.setFontSize(fontName: fontName, at: 3)
        case .screen5_5Inch:
            self.setFontSize(fontName: fontName, at: 4)
        case .screen5_8Inch:
            self.setFontSize(fontName: fontName, at: 5)
        case .screen6_1Inch:
            self.setFontSize(fontName: fontName, at: 6)
        case .screen6_5Inch:
           self.setFontSize(fontName: fontName, at: 7)
        case .screen7_9Inch:
            self.setFontSize(fontName: fontName, at: 8)
        case .screen9_7Inch:
            self.setFontSize(fontName: fontName, at: 9)
        case .screen10_5Inch:
            self.setFontSize(fontName: fontName, at: 10)
        case .screen12_9Inch:
           self.setFontSize(fontName: fontName, at: 11)
        }
    }
}



