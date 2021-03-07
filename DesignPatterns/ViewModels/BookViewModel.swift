//
//  BookViewModel.swift
//  DesignPatterns
//
//  Created by Matthew Dias on 2/18/21.
//

import Foundation

// simpler example: https://medium.com/flawless-app-stories/mvvm-in-swiftui-8a2e9cc2964a
struct BookmarkViewModel {

    let bookmarks: BookmarkController

    func update(bookmark: Post) {
        if bookmarks.isBookmarked(bookmark) {
            bookmarks.removeBookmark(post: bookmark)
        }
        else {
            bookmarks.addBookmark(post: bookmark)
        }
    }
}
