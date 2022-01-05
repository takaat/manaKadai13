//
//  ContentView.swift
//  Kadai13
//
//  Created by mana on 2022/01/05.
//

import SwiftUI

struct ContentView: View {
    private let fruits = ["りんご", "みかん", "バナナ", "パイナップル"]
    private let checkMark = Image(systemName: "checkmark")

    var body: some View {
        NavigationView {
            List {
                ForEach(0..<fruits.count) { index in
                    HStack {
                        if index % 2 == 0 {
                            checkMark
                                .hidden()
                        } else {
                            checkMark
                                .foregroundColor(.orange)
                        }

                        Text(fruits[index])
                    }
                }
            }.listStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
