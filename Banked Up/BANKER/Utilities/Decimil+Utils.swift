//
//  DecimilUtils.swift
//  Banked Up
//
//  Created by Joseph Gilmore on 10/6/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
