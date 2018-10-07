//
//  LoginVC.swift
//  MDBSocials
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    
    var logoImageView: UIImageView!
    
    var usernameField: UITextField!
    var passwordField: UITextField!
    
    var switchSignInTypeButton: UIButton!
    var loginButton: UIButton!
    
    var ourUserID: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Constants.lightBlue
        setupLogo()
        setupSwitchButton()
        setupLoginButton()
        setupTextFields()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    func displayAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(defaultAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func handleLogin() {
        var username = ""
        var password = ""
        
        username = usernameField.text!
        password = passwordField.text!
        
        guard username != "" else {
            self.displayAlert(title: "Error", message: "Username cannot be blank")
            viewDidLoad()
            return
        }
        guard password != "" else {
            self.displayAlert(title: "Error", message: "Password cannot be blank")
            viewDidLoad()
            return
        }
        
        Auth.auth().signIn(withEmail: (Auth.auth().currentUser?.email)!, password: password, completion: { (user, error) in
            if let error = error {
                print(error)
                // self.displayAlert(title: "There was an error", message: "Trying to sign you in")
                return
            } else {
                self.ourUserID = user?.user.uid
            }
        })
        self.performSegue(withIdentifier: "fromLoginToTab", sender: self)

    }
    
    @objc func handleSwitch() {
        performSegue(withIdentifier: "toSignupVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
