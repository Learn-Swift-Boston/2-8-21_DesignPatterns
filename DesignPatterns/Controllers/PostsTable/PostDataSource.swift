//
//  PostDataSource.swift
//  DesignPatterns
//
//  Created by Matthew Dias on 2/18/21.
//

import Foundation
import UIKit

protocol PostDataSourceDelegate: class {
    func didFinishFetching()
}

class PostDataSource: NSObject, UITableViewDataSource {
    weak var delegate: PostDataSourceDelegate?

    var posts = [Post]()

    func fetch() {
        NetworkingController.getPosts { posts in
            self.posts = posts
            self.delegate?.didFinishFetching()
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int { return 1 }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let post = posts[indexPath.row]
        cell.textLabel?.text = post.title

        return cell
    }

    
}
