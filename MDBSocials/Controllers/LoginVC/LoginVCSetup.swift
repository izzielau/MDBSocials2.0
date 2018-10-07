//
//  LoginVC - UISetup.swift
//  MDBSocials
//

import UIKit

extension LoginVC {
    
    func setupLogo() {
        logoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        logoImageView.center = CGPoint(x: view.frame.width / 2, y: view.frame.height / 3)
        logoImageView.image = UIImage(named: "logo")
        view.addSubview(logoImageView)
    }
    
    func setupSwitchButton() {
        switchSignInTypeButton = UIButton(frame: CGRect(x: 2 * view.frame.width / 3, y: 20, width: view.frame.width / 4, height: 50))
        switchSignInTypeButton.backgroundColor = Constants.darkBlue
        switchSignInTypeButton.setTitle("Register", for: UIControl.State())
        switchSignInTypeButton.setTitleColor(UIColor.white, for: UIControl.State())
        switchSignInTypeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        switchSignInTypeButton.addTarget(self, action: #selector(handleSwitch), for: .touchUpInside)
        view.addSubview(switchSignInTypeButton)
    }
    
    func setupLoginButton() {
        loginButton = UIButton(frame: CGRect(x: 20, y: view.frame.height - 100, width: view.frame.width - 40, height: 60))
        loginButton.backgroundColor = Constants.darkBlue
        loginButton.setTitle("Login", for: UIControl.State())
        loginButton.setTitleColor(UIColor.white, for: UIControl.State())
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        view.addSubview(loginButton)
    }
    
    func setupTextFields() {
        usernameField = UITextField(frame: CGRect(x: 10, y: view.frame.height / 2 + 100, width: view.frame.width - 20, height: 40))
        usernameField.placeholder = "Username"
        usernameField.layer.cornerRadius = 20
        usernameField.textAlignment = .center
        usernameField.backgroundColor = .white
        view.addSubview(usernameField)
        
        passwordField = UITextField(frame: CGRect(x: 10, y: view.frame.height / 2 + 150, width: view.frame.width - 20, height: 40))
        passwordField.placeholder = "Password"
        passwordField.layer.cornerRadius = 20
        passwordField.textAlignment = .center
        passwordField.isSecureTextEntry = true
        passwordField.backgroundColor = .white
        view.addSubview(passwordField)
    }
}
