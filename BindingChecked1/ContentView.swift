//
//  ContentView.swift
//  BindingChecked1
//
//  Created by MsMacM on 2024/01/17.
//

import SwiftUI

struct ContentView: View {
    @State var isMychecked1: Bool = false
    @State var isMychecked2: Bool = false

    var body: some View {
        VStack {
            HStack {
                Text("担当者１のチェック")
                CheckMarkPerson(isChecked: $isMychecked1)
            }
            HStack {
                Text("担当者２のチェック")
                CheckMarkPerson(isChecked: $isMychecked2)
            }
            .padding()
        }
    }
}
//チェックマークViewの構造体
struct CheckMarkPerson: View {
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
            self.isChecked.toggle()
        }) {
            Image(systemName: isChecked ?
                  "person.crop.circle.badge.checkmark" :
                    "person.crop.circle")
            .foregroundColor(isChecked ? .blue : .red)
        }
        .imageScale(.large)
        .frame(width: 40)
    }
}
#Preview {
    ContentView()
}
