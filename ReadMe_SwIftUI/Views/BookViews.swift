//
//  BooksView.swift
//  ReadMe_SwIftUI
//
//  Created by Bruno Teixeira Lemgruber Correa on 06/12/21.
//

import SwiftUI

extension Book {
    struct Image: View {
        var title: String
        var size: CGFloat?
        
        var body: some View {
            let symbol = SwiftUI.Image(title: title) ?? .init(systemName: "book")
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary.opacity(0.5))
        }
    }
}

extension Image {
    init?(title:String){
        guard let character = title.first,
        case let symbolName = "\(character.lowercased()).square",
        UIImage(systemName: symbolName) != nil else {
            return nil
        }
        self.init(systemName:symbolName)
    }
}


struct TitleAuthorStackView: View{
    let book:Book
    let titleFont: Font
    let authorFont: Font
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(book.title)
                .font(titleFont)
            Text( book.author)
                .foregroundColor(.secondary)
                .font(authorFont)
        }
    }
}

struct Book_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TitleAuthorStackView(book: .init(), titleFont: .title, authorFont: .title2)
            Book.Image(title:Book().title)
            Book.Image(title: "")
            Book.Image(title: "✉️")
        }
    }
}
