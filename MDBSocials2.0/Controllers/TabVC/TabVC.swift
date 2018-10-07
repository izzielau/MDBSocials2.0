//
//  TabVC.swift
//  MDBSocials
//
//  Created by Isabella Lau on 10/6/18.
//  Copyright © 2018 Isabella Lau. All rights reserved.
//

import UIKit

class TabVC: UITabBarController {

    var navigation : UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigation = navigationItem
        
        let tabOne = FeedVC()
        let image1 = UIImage(named: "feed")
        tabOne.tabBarItem = UITabBarItem(title: "Feed", image: nil, tag: 0)
        
        let tabTwo = EventsVC()
        let image2 = UIImage(named: "events")
        tabTwo.tabBarItem = UITabBarItem(title: "My Events", image: nil, tag: 1)
        
        self.viewControllers = [tabOne, tabTwo]
        // Do any additional setup after loading the view.
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
