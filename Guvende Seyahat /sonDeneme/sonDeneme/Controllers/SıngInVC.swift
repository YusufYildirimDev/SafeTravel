//
//  SıngInVC.swift
//  sonDeneme
//
//  Created by Yusuf Muhammet Yıldırım on 20/01/2022.
//

import UIKit
import Firebase

class SıngInVC: UIViewController {

    @IBOutlet weak var sıngInImg: UIImageView!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnLogin(_ sender: Any) {
   
        let pass = passwordText.text ?? ""
        let email = emailText.text ?? ""
        
        if pass.isEmpty || email.isEmpty {

            print("Lütfen şifre veya email giriniz.")
            
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: pass) { (result, error) in
            
            if error != nil {
                print(error?.localizedDescription ?? "Error")
            }else {
                
                self.tabBarController?.selectedIndex = 0
        
            }
            
        }
   
    }
    
    @IBAction func btnForgetPassword(_ sender: Any) {
    
        Common.showAlert(title: "OK", message: "Yeni şifre oluşturmanız için  E-mail adresinize link  gönderilmiştir.", vc: self)
    
    }
}
