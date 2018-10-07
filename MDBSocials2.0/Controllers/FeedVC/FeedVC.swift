//
//  FeedVC.swift
//  MDBSocials
//

import UIKit
import Firebase

class FeedVC: UIViewController {
    
    var createPostButton: UIButton!
    var mainTabBarVC : TabVC!

    var posts: [Post] = []
    var postSelected : Post!

    var postTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Constants.white
        
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
        mainTabBarVC.performSegue(withIdentifier: "toPostCreatorVC", sender: mainTabBarVC)
    }
}
