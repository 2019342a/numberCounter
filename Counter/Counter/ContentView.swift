//
//  ContentView.swift
//  Counter
//
//  Created by Theofilos Alexiou on 17/03/2021.
//

import SwiftUI

struct ContentView {
    @StateObject var controller = ContentViewController()
}

extension ContentView: View {
    var body: some View {
        VStack {
            Text(controller.currentValue.spellOut)
                .padding()
                .font(.largeTitle)
                .foregroundColor(.secondary)
            HStack {
                Button(action: controller.decrement) {
                    Image(systemName: "arrow.left")
                }
                .padding()
                Button(action: controller.increment) {
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
