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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedBookmark(_ sender: Any) {
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
