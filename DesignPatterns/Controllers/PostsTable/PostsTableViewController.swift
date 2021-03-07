//
//  PostsTableViewController.swift
//  DesignPatterns
//
//  Created by Matthew Dias on 2/18/21.
//

import UIKit

class PostsTableViewController: UITableViewController {

    let dataSource = PostDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = dataSource
        dataSource.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        dataSource.fetch()
    }


    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? PostDetailViewController,
              let cell = sender as? UITableViewCell,
              let indexPath = tableView.indexPath(for: cell) else { return }

        destination.post = dataSource.posts[indexPath.row]
    }


}

extension PostsTableViewController: PostDataSourceDelegate {
    func didFinishFetching() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
