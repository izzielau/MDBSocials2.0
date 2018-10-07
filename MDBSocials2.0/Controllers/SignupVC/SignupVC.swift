//
//  LoginVC.swift
//  MDBSocials
//

import UIKit
import Firebase

class SignupVC: UIViewController {
    
    var logoImageView: UIImageView!
    
    var nameField: UITextField!
    var emailField: UITextField!
    var usernameField: UITextField!
    var passwordField: UITextField!
    
    var switchSignInTypeButton: UIButton!
    var registerButton: UIButton!
    
    var ourUserID: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Constants.lightBlue
        
        setupLogo()
        setupSwitchButton()
        setupRegisterButton()
        setupTextFields()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    @objc func handleSignup() {
        var name = ""
        var email = ""
        var username = ""
        var password = ""
        
        name = nameField.text!
        email = emailField.text!
        username = usernameField.text!
        password = passwordField.text!
        
        guard name != "" else {
            self.displayAlert(title: "Error", message: "Name cannot be blank")
            viewDidLoad()
            return
        }
        guard email != "" else {
            self.displayAlert(title: "Error", message: "Email cannot be blank")
            viewDidLoad()
            return
        }
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
        
        Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
            if let error = error {
                print(error)
                // self.displayAlert(title: "There was an error", message: "Trying to make you")
                return
            } else {

                guard let uid = user?.user.uid else {
                    return
                }

                let ref = Database.database().reference()
                let userRef = ref.child("users").child(username)
                let values = ["name": name, "username": username, "email": email]

                userRef.updateChildValues(values, withCompletionBlock: { (error, ref) in
                    if error != nil {
                        print(error)
                        return
                    } else {
                        self.ourUserID = user?.user.uid
                    }
                })
            }
        })
        self.performSegue(withIdentifier: "fromSignupToTab", sender: self)

    }
    
    func displayAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(defaultAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func handleSwitch() {
        performSegue(withIdentifier: "toLoginVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
