//
//  abbr.swift
//  COr
//
//  Created by Yeshiwas, Dagmawi on 8/10/16.
//  Copyright © 2016 Yeshiwas, Dagmawi. All rights reserved.
//

import Foundation


struct abbr {
    let text: String
    let author: String
    
    static let all: [abbr] = [
        abbr(text: "Never put off until tomorrow what you can do the day after tomorrow.", author: "Mark Twain"),
        abbr(text: "Efficiency is doing better what is already being done.", author: "Peter Drucker"),
        abbr(text: "To infinity and beyond!", author: "Buzz Lightyear"),
        abbr(text: "May the Force be with you.", author: "Han Solo"),
        abbr(text: "Simplicity is the ultimate sophistication", author: "Leonardo da Vinci"),
        abbr(text: "It’s not just what it looks like and feels like. Design is how it works.", author: "Steve Jobs")
    ]
}

// MARK: - Printable

extension abbr: CustomStringConvertible {
    var description: String {
        return "\"\(text)\" — \(author)"
    }
}