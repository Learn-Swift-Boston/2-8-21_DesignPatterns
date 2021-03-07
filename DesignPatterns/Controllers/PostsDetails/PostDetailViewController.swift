//
//  PostDetailViewController.swift
//  DesignPatterns
//
//  Created by Matt Dias on 2/17/21.
//

import UIKit

class PostDetailViewController: UIViewController {
    @IBOutlet var postTitleLabel: UILabel!
    @IBOutlet var postDescriptionLabel: UILabel!
    @IBOutlet weak var bookmarkButton: UIButton!

    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        postTitleLabel.text = post.title
        postDescriptionLabel.text = post.selftext

        updateImage()
    }
    
    @IBAction func tappedBookmark(_ sender: Any) {
        let isBookmarked = BookmarkController.sharedInstance.isBookmarked(post)

        if isBookmarked {
            BookmarkController.sharedInstance.removeBookmark(post: post)
        } else {
            BookmarkController.sharedInstance.addBookmark(post: post)
        }

        updateImage()
    }

    func updateImage() {
        let image = BookmarkController.sharedInstance.image(for: post)
        bookmarkButton.setImage(image, for: .normal)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
