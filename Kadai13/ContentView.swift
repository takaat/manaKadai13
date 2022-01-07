//
//  ContentView.swift
//  Kadai13
//
//  Created by mana on 2022/01/05.
//

import SwiftUI

struct CheckItem {
    let name: String
    let isChecked: Bool
}

struct ContentView: View {
    private let fruits: [CheckItem] = [
        .init(name: "りんご", isChecked: false),
        .init(name: "みかん", isChecked: true),
        .init(name: "バナナ", isChecked: false),
        .init(name: "パイナップル", isChecked: true)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(0..<fruits.count) { index in
                    CheckItemView(item: fruits[index])
                }
            }.listStyle(.plain)
        }
    }
}

struct CheckItemView: View {
    let item: CheckItem

    private let checkMark = Image(systemName: "checkmark")

    var body: some View {
        HStack {
            if item.isChecked {
                checkMark.foregroundColor(.orange)
            } else {
                checkMark.hidden()
            }

            Text(item.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
