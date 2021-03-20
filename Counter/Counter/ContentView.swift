//
//  ContentView.swift
//  Counter
//
//  Created by Theofilos Alexiou on 17/03/2021.
//

import SwiftUI

struct ContentView {
    @State private var counter = 0
    
    func increment() {
        counter += 1
    }
    
    func decrement() {
        counter -= 1
    }
}

extension ContentView: View {
    var body: some View {
        VStack {
            Text(counter.spellOut)
                .padding()
                .font(.largeTitle)
                .foregroundColor(.secondary)
            HStack {
                Button(action: decrement) {
                    Image(systemName: "arrow.left")
                }
                .padding()
                Button(action: increment) {
                    Image(systemName: "arrow.right")
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
