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
           ]
}

// MARK: - Printable

extension abbr: CustomStringConvertible {
    var description: String {
        return "\"\(text)\" — \(author)"
    }
}