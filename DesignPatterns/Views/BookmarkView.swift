//
//  BookmarkView.swift
//  DesignPatterns
//
//  Created by Matt Dias on 2/17/21.
//

import SwiftUI

struct BookmarkView: View {

    @ObservedObject
    var bookmarks: BookmarkController
    let viewModel: BookmarkViewModel

    init(bookmarks: ObservedObject<BookmarkController>) {
        _bookmarks = bookmarks
        viewModel = BookmarkViewModel(bookmarks: bookmarks.wrappedValue)
    }

    var body: some View {
        List(bookmarks.sortedBookmarks) { post in
            HStack {
                Text(verbatim: post.title)
                Button(action: {
                    viewModel.update(bookmark: post)
                }, label: {
                    if let image = bookmarks.image(for: post) {
                        Image(uiImage: image)
                    }
                })
            }
        }
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView(bookmarks: ObservedObject(wrappedValue:  BookmarkController.sharedInstance))
    }
}

class BookmarkHostingController: UIHostingController<BookmarkView> {

    required init?(coder: NSCoder) {
        super.init(
            coder: coder,
            rootView: BookmarkView(bookmarks: ObservedObject(wrappedValue:  BookmarkController.sharedInstance)))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
