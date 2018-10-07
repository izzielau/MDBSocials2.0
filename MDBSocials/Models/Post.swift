//
//  Post.swift
//  MDBSocials
//
//  Created by Isabella Lau on 9/28/18.
//  Copyright © 2018 Isabella Lau. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class Post {
    var text: String?
    var date: String?
    var description: String?
    var imageUrl: String?
    var posterId: String?
    var poster: String?
    var id: String?
    var image: UIImage?
    var numInterested: Int!
    var membersInterested: [String]!
    
    init(id: String, postDict: [String:Any]?) {
        self.id = id
        if postDict != nil {
            if let text = postDict!["text"] as? String {
                self.text = text
            }
            if let description = postDict!["description"] as? String {
                self.description = description
            }
            if let imageUrl = postDict!["imageUrl"] as? String {
                self.imageUrl = imageUrl
            }
            if let posterId = postDict!["posterId"] as? String {
                self.posterId = posterId
            }
            if let poster = postDict!["poster"] as? String {
                self.poster = poster
            }
            if let date = postDict!["date"] as? String {
                self.date = date
            }
            if let numInterested = postDict!["numInterested"] as? Int {
                self.numInterested = numInterested
            } else {
                self.numInterested = 0
            }
            if let membersInterested = postDict!["membersInterested"] as? [String] {
                self.membersInterested = membersInterested
            } else {
                self.membersInterested = []
            }
        }
    }
    
    init() {
        self.text = "Text"
        self.imageUrl = "https://images-platform.99static.com/RpTco5SQExEKSsPhtI8zCWcf08k=/142x142:1276x1276/fit-in/900x675/99designs-contests-attachments/78/78601/attachment_78601853"
        self.id = "1"
        self.poster = "Izzie Lau"
    }
}
