//
//  DetailView.swift
//  ReadMe_SwIftUI
//
//  Created by Bruno Teixeira Lemgruber Correa on 06/12/21.
//

import SwiftUI

struct DetailView: View {
    let book:Book
    @State var showingImagePicker = false
    
    var body: some View {
        VStack (alignment:.leading){
            TitleAuthorStackView(book: book, titleFont: .title, authorFont: .title2)
            VStack {
                Book.Image(title: book.title)
                Button(action: {
                    showingImagePicker = true
                }) {
                    Text("Upload Image...")
                }
                .padding()
            }
            Spacer()
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init())
    }
}
