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
 
    
    var body: some View {
        VStack {
            Form {
                TextField(text: $inputText, prompt: Text("Required")) {
                    Text("Input Text Here")
                }
                TextField(value: $inputColumns, format: .number, prompt: Text("Required")) {
                    Text("Input Text Here")
                }
            }
            .onSubmit(of: .text) {
                print(leftAlign(text: inputText, columns: inputColumns))
            }
            
            
//            TextEditor(text: $ourText)
//                .border(Color.black, width: 8)
        }
    }
}

struct MainViews: PreviewProvider {
    static var previews: some View {
            MainView()
    }
}
