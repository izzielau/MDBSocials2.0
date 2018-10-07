//
//  FeedVC.swift
//  MDBSocials
//

import UIKit
import Firebase

class FeedVC: UIViewController {
    
    var createPostButton: UIButton!
    
    var posts: [Post] = []
    var postSelected : Post!

    var postTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCreatePostButton()
        setupTableView()
    }
    
    @objc func handleLogOut() {
        do {
            try Auth.auth().signOut()
        } catch let error{
            print(error)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @objc func handleCreatePost() {
        performSegue(withIdentifier: "toPostCreatorVC", sender: self)
    }
}
