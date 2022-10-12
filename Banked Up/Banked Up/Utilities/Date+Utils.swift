//
//  Date+Utils.swift
//  Banked Up
//
//  Created by Joseph Gilmore on 10/12/22.
//

import Foundation

extension Date {
    static var bankeyDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "MDT")
        return formatter
    }
    var monthDayYearString: String {
        let dateFormatter = Date.bankeyDateFormatter
        dateFormatter.dateFormat = "MMM d, yyy"
        return dateFormatter.string(from: self)
    }
}
