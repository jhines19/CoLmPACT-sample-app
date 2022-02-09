//
//  MainView.swift
//  ColmPACT
//
//  Created by Jaraad Hines on 2/6/22.
//

import SwiftUI

struct MainView: View {
    
    @State private var inputText = String()
    @State private var inputColumns = Int()
    @State var changeText = String()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("input sentence and column number below")) {
                    TextField("Your Sentence", text: $inputText)
                        .textFieldStyle(.roundedBorder)
                    TextField("How Many Columns?", value: $inputColumns, format: .number)
                        .textFieldStyle(.roundedBorder)
                }
                TextEditor(text:$changeText).font(.system(.body,design: .monospaced))
                Button(action: {
                    self.changeText = leftAlign(text: inputText, columns: inputColumns)
                }) {
                    Text("Click To View Your Formatted Sentence!")
                }
            }
            .navigationBarTitle("Column Formatter")
        }
    }
}
//each character has specific spacing in view: monospace
//pixel width in the console has no font styling, make sure you use monospace to match that in your view
