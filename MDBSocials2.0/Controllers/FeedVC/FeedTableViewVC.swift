//
//  FeedTableViewVC.swift
//  MDBSocials
//
//  Created by Isabella Lau on 9/29/18.
//  Copyright © 2018 Isabella Lau. All rights reserved.
//

import UIKit

extension FeedVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    // Setting up cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "post") as! FeedCell
        for subview in cell.contentView.subviews {
            subview.removeFromSuperview()
        }
        
        cell.awakeFromNib()
        
        let postInCell = posts[indexPath.row]
        let imageURL = URL(string: postInCell.imageUrl!)
        let data = try? Data(contentsOf: imageURL!)
        DispatchQueue.main.async {
            if let retrievedImage = data {
                let backgroundImage = UIImage(data: retrievedImage)
                cell.backgroundView = UIImageView(image: backgroundImage)
                cell.backgroundView!.contentMode = .scaleAspectFit
            }
        }
        cell.postEventName.text = postInCell.text
        cell.postEventName.textAlignment = .center
        cell.postEventName.font = UIFont(name: "Hiragino Sans", size: 16)
        cell.postEventName.layer.cornerRadius = 5.0
        
        cell.postMemberName.text = postInCell.poster
        cell.postMemberName.textAlignment = .center
        cell.postMemberName.font = UIFont(name: "Hiragino Sans", size: 13)
        cell.postMemberName.layer.cornerRadius = 5.0
        
        cell.postNumberInterested.text = "\(postInCell.numInterested!) interested"
        cell.postNumberInterested.textAlignment = .center
        cell.postNumberInterested.font = UIFont(name: "Hiragino Sans", size: 10)
        cell.postNumberInterested.layer.cornerRadius = 5.0
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        postSelected = posts[indexPath.row]
        performSegue(withIdentifier: "showDetailView", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 200.0; //Choose your custom row height
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailView" {
            
        }
    }
}
