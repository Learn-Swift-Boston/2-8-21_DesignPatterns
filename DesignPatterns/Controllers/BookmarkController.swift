//
//  BookmarkController.swift
//  DesignPatterns
//
//  Created by Matthew Dias on 2/18/21.
//

import UIKit

class BookmarkController: ObservableObject {
    static let sharedInstance = BookmarkController()

    private init() {}

    @Published private var bookmarks: Set<Post> = []

    var sortedBookmarks: [Post] {
        bookmarks.sorted { $0.title < $1.title }
    }

    func addBookmark(post: Post) {
        bookmarks.insert(post)
        // save to some storage
    }

    func removeBookmark(post: Post) {
        bookmarks.remove(post)
        // remove from some storage
    }

    func isBookmarked(_ post: Post) -> Bool {
        bookmarks.contains(post)
    }

    func image(for post: Post) -> UIImage? {
        let imageName = isBookmarked(post) ? "bookmark.fill" : "bookmark"
        let image = UIImage(systemName: imageName)

        return image
    }
}
