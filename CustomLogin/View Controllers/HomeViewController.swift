//
//  HomeViewController.swift
//  CustomLogin
//
//  Created by iheb mbarki on 25/8/2022.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    @IBOutlet weak var logOutButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func handleLogOut() {
        
        do {
            try Auth.auth().signOut()
        } catch let logoutError {
            print(logoutError)
        }
        
   
        
    }
    

    @IBAction func logOutTapped(_ sender: Any) {
        handleLogOut()
    }
    
}
