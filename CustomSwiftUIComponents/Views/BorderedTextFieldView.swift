//
//  BorderedTextFieldView.swift
//  CustomSwiftUIComponents
//
//  Created by Frederick Javalera on 3/28/21.
//

import SwiftUI

struct BorderedTextFieldView: View {
    @State var title: String
    @State var text: String
    var body: some View {
        ZStack {
            HStack {
                TextField("", text: $text)
                    .foregroundColor(.black)
                Spacer()
            }
            .padding()
            .border(Color.black, width: 1)
            .cornerRadius(8)
            .padding()
            .background(Color.gray)
            
            GeometryReader(content: { geometry in
                Text(title)
                    .padding(.horizontal, 10)
                    .foregroundColor(.black)
                    .background(Color.gray)
                    .offset(CGSize(width: geometry.size.width/22, height: geometry.size.height/12))
            })
            
        }
        .frame(width: .infinity, height: 80, alignment: .center)
    }
}

struct BorderedTextFieldView_Previews: PreviewProvider {
    @State static var text: String = ""
    @State static var title: String = "Application Number"
    static var previews: some View {
        BorderedTextFieldView(title: title, text: text)
            .previewLayout(.sizeThatFits)
    }
}
