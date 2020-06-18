//
//  LoginViewController.swift
//  AffirmationsApp
//
//  Created by Mallikarjun on 18/06/20.
//  Copyright © 2020 Mallikarjun. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController,GIDSignInDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance()?.delegate = self
        
        let signInButton = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        
        signInButton.center = view.center
        view.addSubview(signInButton)
        
        // Automatically sign in the user.
        // GIDSignIn.sharedInstance()?.restorePreviousSignIn()
    }
    
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
        print("Error while Sign In Google: \(error!)")
    }
    
    
  /*  @IBAction func logOutButtonClicked(_ sender: Any) {
        print("Logout Button Clicked")
        GIDSignIn.sharedInstance().signOut()
    } */
    
}
