//
//  Model.swift
//  Counter
//
//  Created by Theofilos Alexiou on 20/03/2021.
//

import Foundation

struct Model {
    let value: Int
}

extension Model {
    var increment: Model {
        Model(value: value + 1)
    }
    
    var decrement: Model {
        Model(value: value - 1)
    }
}
