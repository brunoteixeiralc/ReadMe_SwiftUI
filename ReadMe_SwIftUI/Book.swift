//
//  Book.swift
//  ReadMe_SwIftUI
//
//  Created by Bruno Teixeira Lemgruber Correa on 06/12/21.
//

struct Book: Hashable {
    let title:String
    let author:String
    
    init(title:String = "Title", author:String = "Author"){
        self.title = title
        self.author = author
    }
}
