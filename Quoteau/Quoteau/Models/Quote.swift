//
//  Quote.swift
//  Quoteau
//
//  Created by Wiktor Górka on 24/12/2019.
//  Copyright © 2019 Lunar Logic. All rights reserved.
//

import Foundation
import RealmSwift

class Quote: Object {
    @objc dynamic var quote: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var author: String? = ""
    var tags = List<String>()
    @objc dynamic var bookTitle: String = ""

    convenience init(quote: String, title: String, author: String?, tags: [String], bookTitle: String) {
        self.init()
        self.quote = quote
        self.title = title
        self.author = author
        let listTags = List<String>()
        tags.forEach { listTags.append($0) }
        self.tags = listTags
        self.bookTitle = bookTitle
    }
}