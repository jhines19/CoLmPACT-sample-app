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
    @State var changeText: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("input sentence and column number below")) {
                    TextField("Your Sentence", text: $inputText)
                        .textFieldStyle(.roundedBorder)
                    TextField("How Many Columns?", value: $inputColumns, format: .number)
                        .textFieldStyle(.roundedBorder)
                }
                TextEditor(text:$changeText)
                Button(action: {
                    self.changeText = "\(leftAlign(text: inputText, columns: inputColumns))"
                }) {
                    Text("Click To View Your Formatted Sentence!")
                }
            }
            .navigationBarTitle("Column Formatter")
        }
    }
}
//get my TextEditor View to contain the results of my (leftAlign) function
//the TextEditor view has "text" as it's parameter; any others?
//switch statement for every value because if else is not conducive for storing val in value
//now the value that has our result is our multilineString


struct MainViews: PreviewProvider {
    static var previews: some View {
            MainView()
    }
}
