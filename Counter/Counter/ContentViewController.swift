//
//  ContentViewController.swift
//  Counter
//
//  Created by Theofilos Alexiou on 20/03/2021.
//

import Foundation
import SwiftUI

class ContentViewController: ObservableObject {
    @Published private var model = Model(value: 0)
}

extension ContentViewController {
    var currentValue: Int {
        model.value
    }
    
    func increment() {
        model = model.increment
    }
    
    func decrement() {
        model = model.decrement
    }
}
