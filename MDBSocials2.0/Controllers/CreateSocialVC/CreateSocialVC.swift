//
//  CreateSocialVC.swift
//  MDBSocials
//
//  Created by Isabella Lau on 9/28/18.
//  Copyright © 2018 Isabella Lau. All rights reserved.
//

import UIKit

class CreateSocialVC: UIViewController {
    // pass in database ref 
    var nameLabel: UILabel!
    var dateLabel: UILabel!
    var descriptionLabel: UILabel!

    var nameTextField: UITextField!
    var descriptionTextField: UITextField!

    var datePicker: UIDatePicker!
    
    var addAPhotoButton: UIButton!
    var postSocialButton: UIButton!
    
    var eventImageView: UIImageView!
    var selectedImageView: UIImageView!

    var selectedImage: UIImage!

    var picker = UIImagePickerController()

    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Constants.lightBlue

        setupNavigationBar()
        
        setupNamePrompt()
        setupDatePicker()
        setupDescriptionPrompt()
        setupPostButton()
    }
    
    @objc func handlePostSocial() {
        // add to database
        if nameTextField.text != "" && descriptionTextField.text != "" {
            self.dismiss(animated: true, completion: nil)
            
            performSegue(withIdentifier: "fromPostToFeedVC", sender: self)
        } else {
            let alert = UIAlertController(title: "Error", message: "Please fill in all fields before adding a post.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    @objc func handleCancelPost() {
        performSegue(withIdentifier: "fromPostToFeedVC", sender: self)
    }

}
