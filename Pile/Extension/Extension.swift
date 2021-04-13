//
//  Extension.swift
//  Pile
//
//  Created by Randy Efan Jayaputra on 13/04/21.
//

import Foundation

extension Date {
    func startOfWeek(using calendar: Calendar = .current) -> Date {
        calendar.dateComponents([.calendar, .yearForWeekOfYear, .weekOfYear], from: self).date!
    }
}
