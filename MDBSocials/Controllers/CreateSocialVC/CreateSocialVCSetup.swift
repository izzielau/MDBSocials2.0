//
//  CreateSocialVCSetup.swift
//  MDBSocials
//
//  Created by Isabella Lau on 9/28/18.
//  Copyright © 2018 Isabella Lau. All rights reserved.
//

import UIKit

extension CreateSocialVC {
    
    func setupNamePrompt() {
        nameLabel = UILabel(frame: CGRect(x: 10, y: view.frame.height / 8 - 10, width: view.frame.width / 3 - 20, height: 45))
        nameLabel.text = "Name"
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont(name: "AmericanTypewriter", size: 20.0)
        nameLabel.backgroundColor = Constants.darkBlue
        view.addSubview(nameLabel)
        
        nameTextField = UITextField(frame: CGRect(x: 10 + view.frame.width / 3, y: view.frame.height / 8 - 10, width: 3 * view.frame.width / 5, height: 40))
        nameTextField.placeholder = "Name of event"
        nameTextField.layer.cornerRadius = 20
        nameTextField.textAlignment = .center
        nameTextField.backgroundColor = .white
        view.addSubview(nameTextField)
    }
    
    func setupDatePicker() {
        dateLabel = UILabel(frame: CGRect(x: 10, y: 3 * view.frame.height / 16, width: view.frame.width / 3 - 20, height: 45))
        dateLabel.text = "Date"
        dateLabel.textAlignment = .center
        dateLabel.font = UIFont(name: "AmericanTypewriter", size: 20.0)
        dateLabel.backgroundColor = Constants.darkBlue
        view.addSubview(dateLabel)

        datePicker = UIDatePicker(frame: CGRect(x: 10 + view.frame.width / 3, y: 3 * view.frame.height / 16, width: 3 * view.frame.width / 5, height: view.frame.height / 8))
        view.addSubview(datePicker)
    }
    
    func setupDescriptionPrompt() {
        descriptionLabel = UILabel(frame: CGRect(x: 10, y: view.frame.height / 3 - 10, width: view.frame.width / 2 - 20, height: 45))
        descriptionLabel.text = "Description"
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = UIFont(name: "AmericanTypewriter", size: 20.0)
        descriptionLabel.backgroundColor = Constants.darkBlue
        view.addSubview(descriptionLabel)
        
        descriptionTextField = UITextField(frame: CGRect(x: 10, y: view.frame.height / 3 + 45, width: view.frame.width - 20, height: 70))
        descriptionTextField.placeholder = "Description of event"
        descriptionTextField.layer.cornerRadius = 20
        descriptionTextField.textAlignment = .center
        descriptionTextField.backgroundColor = .white
        view.addSubview(descriptionTextField)
    }
    
    func setupPostButton() {
        postSocialButton = UIButton(frame: CGRect(x: view.frame.width / 2 - 30, y: view.frame.height - 50, width: 60, height: 40))
        postSocialButton.backgroundColor = Constants.darkBlue
        postSocialButton.setTitle("POST", for: UIControl.State())
        postSocialButton.setTitleColor(UIColor.white, for: UIControl.State())
        postSocialButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        postSocialButton.addTarget(self, action: #selector(handlePostSocial), for: .touchUpInside)
        view.addSubview(postSocialButton)
    }
    
    func setupNavigationBar() {
        navigationController?.navigationBar.isHidden = false

        self.navigationItem.title = "Feed"
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancelPost))
        self.navigationItem.leftBarButtonItem = cancelButton
    }
}
