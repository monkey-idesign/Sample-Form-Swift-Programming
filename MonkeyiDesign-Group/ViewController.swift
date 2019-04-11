//
//  ViewController.swift
//  MonkeyiDesign-Group
//
//  Created by Apple on 4/9/19.
//  Copyright © 2019 Monkey iDesign. All rights reserved.
// www.monkeyidesign.com
// +85592 200069
//TEst for Rathana

import UIKit

class ViewController: UIViewController {

    
    let plusPhotoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "plus_photo").withRenderingMode(.alwaysOriginal), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 5
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.setPaddiing()
        //tf.borderStyle = .roundedRect
   
        return tf
    }()
    let usernameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Username"
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 5
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.setPaddiing()
        
        return tf
    }()
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 5
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.setPaddiing()
        
        return tf
    }()
    let signUpButton: UIButton = {
        let tf = UIButton(type: .system)
        tf.setTitle("Sign Up", for: .normal)
        //tf.backgroundColor = UIColor(red:0.27, green:0.56, blue:0.96, alpha:1.0)
        tf.backgroundColor = UIColor.rgb(red: 68, green: 142, blue: 246)
        tf.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        tf.layer.cornerRadius = 5
        tf.setTitleColor(.white, for: .normal)
        
        return tf
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(plusPhotoButton)
   
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        plusPhotoButton.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 60, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 140, height: 140)
        
        
        setupInputFields()
        
    }
    fileprivate func setupInputFields() {
        
        let stackView = UIStackView(arrangedSubviews: [emailTextField, usernameTextField, passwordTextField, signUpButton])
        
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 15
        
        view.addSubview(stackView)
  
        stackView.anchor(top: plusPhotoButton.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 200)
    }


}
extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
    }
    
}
extension UITextField {
    
    func setPaddiing() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

