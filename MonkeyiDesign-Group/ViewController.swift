//
//  ViewController.swift
//  MonkeyiDesign-Group
//
//  Created by Apple on 4/9/19.
//  Copyright © 2019 Monkey iDesign. All rights reserved.
// www.monkeyidesign.com
// +85592 200069

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
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = " Email"
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 5
        tf.font = UIFont.systemFont(ofSize: 14)
        //tf.borderStyle = .roundedRect
   
        return tf
    }()
    let usernameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Username"
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 5
        tf.font = UIFont.systemFont(ofSize: 14)
        
        return tf
    }()
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Password"
        tf.isSecureTextEntry = true
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 5
        tf.font = UIFont.systemFont(ofSize: 14)
        
        return tf
    }()
    let signUpButton: UIButton = {
        let tf = UIButton(type: .system)
        tf.setTitle(" Sign Up", for: .normal)
        tf.backgroundColor = UIColor(red:0.27, green:0.56, blue:0.96, alpha:1.0)
        tf.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        tf.layer.cornerRadius = 5
        tf.setTitleColor(.white, for: .normal)
        
        return tf
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(plusPhotoButton)
        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        
        setupInputFields()
        
    }
    fileprivate func setupInputFields() {
        
        let stackView = UIStackView(arrangedSubviews: [emailTextField, usernameTextField, passwordTextField, signUpButton])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 15
        
        view.addSubview(stackView)
        NSLayoutConstraint.activate([stackView.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor, constant: 20), stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),stackView.heightAnchor.constraint(equalToConstant: 200)
            ])
    }


}

