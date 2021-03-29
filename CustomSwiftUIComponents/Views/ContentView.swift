//
//  ContentView.swift
//  CustomSwiftUIComponents
//
//  Created by Frederick Javalera on 3/28/21.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            GeometryReader(content: { geometry in
                BorderedTextFieldView(title: "Test Title Name", text: text)
                    .padding(.top, geometry.size.height/2)
            })
        }
        .background(Color.gray)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
