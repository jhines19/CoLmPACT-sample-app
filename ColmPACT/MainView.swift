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
    @State var submit = false
    @State private var isShowingModal = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("input sentence and column number below")) {
                    TextField("Your Sentence", text: $inputText)
                        .textFieldStyle(.roundedBorder)
                    TextField("How Many Columns?", value: $inputColumns, format: .number)
                        .textFieldStyle(.roundedBorder)
                }
                Button(action: {
                    self.submit.toggle()}) {
                            Text("Submit")
                        }
            }
            .onSubmit(of: .text) {
                            leftAlign(text: inputText, columns: inputColumns)
                        }
            .navigationBarTitle("Column Formatter")
        }
    }
}

struct MainViews: PreviewProvider {
    static var previews: some View {
            MainView()
    }
}
