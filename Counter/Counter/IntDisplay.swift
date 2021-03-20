//
//  IntDisplay.swift
//  Counter
//
//  Created by Theofilos Alexiou on 20/03/2021.
//

import Foundation

private let formatter: NumberFormatter = {
    let f = NumberFormatter()
    f.numberStyle = .spellOut
    return f
}()

extension Int {
    var spellOut: String {
        formatter.string(for: self) ?? ""
    }
}
