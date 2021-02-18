//
//  BookmarkView.swift
//  DesignPatterns
//
//  Created by Matt Dias on 2/17/21.
//

import SwiftUI

struct BookmarkView: View {
    var body: some View {
        Text("Some SwiftUI View")
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
    }
}

class BookmarkHostingController: UIHostingController<BookmarkView> {

    required init?(coder: NSCoder) {
        super.init(coder: coder,rootView: BookmarkView());
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
