//
//  DateExt.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 08.01.2026.
//

import Foundation

extension Date {
    static let dayMonthFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "d MMM YYYY"
        return formatter
    }()
    
    static let withoutDayMonthFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "MMM YYYY"
        return formatter
    }()
    
    var dayMonthYear: String {
        Self.dayMonthFormatter.string(from: self)
    }
    
    var withoutDayMonthYear: String {
        Self.withoutDayMonthFormatter.string(from: self)
    }
    
    var day: Int {
        Calendar.current.component(.day, from: self)
    }
}
