//
//  FeedVCSetup.swift
//  MDBSocials
//
//  Created by Isabella Lau on 9/28/18.
//  Copyright © 2018 Isabella Lau. All rights reserved.
//

import UIKit

extension FeedVC {
    
    func setupTableView() {
        edgesForExtendedLayout = []
        
        postTableView = UITableView(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: view.frame.height))
        postTableView.register(FeedCell.self, forCellReuseIdentifier: "post")
        postTableView.delegate = self as? UITableViewDelegate
        postTableView.dataSource = self as? UITableViewDataSource
        view.addSubview(postTableView)
    }
    
    func setupCreatePostButton() {
        createPostButton = UIButton(frame: CGRect(x: view.frame.width - 75, y: 25, width: 50, height: 50))
        createPostButton.backgroundColor = Constants.darkBlue
        createPostButton.setTitle("+", for: UIControl.State())
        createPostButton.setTitleColor(UIColor.white, for: UIControl.State())
        createPostButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        createPostButton.addTarget(self, action: #selector(handleCreatePost), for: .touchUpInside)
        view.addSubview(createPostButton)
    }

}
