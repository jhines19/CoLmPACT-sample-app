//
//  File.swift
//  ColmPACT
//
//  Created by Jaraad Hines on 2/6/22.
//

import SwiftUI

struct TitleView: View {
    @State var selection: Int? = nil
                                     
    var body: some View {
        VStack {
            Text("Welcome to ColumPACT")
                .font(.largeTitle)
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .padding()
                .border(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing), width: 15)
            NavigationView {
                VStack {
                    NavigationLink(destination: MainView(), tag: 1, selection: $selection) {
                        Button("Press to Start") {
                            self.selection = 1
                        }
                    }
                }
            }
        }
    }
}
