//
//  SıngUpVC.swift
//  sonDeneme
//
//  Created by Yusuf Muhammet Yıldırım on 20/01/2022.
//

import UIKit
import Firebase

class SıngUpVC: UIViewController {

    @IBOutlet weak var repeatPassword: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var sıngUpImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnRegister(_ sender: Any) {
    
        
        let pass = passwordText.text ?? ""
        let repeatPass = repeatPassword.text ?? ""
        let email = emailText.text ?? ""
             
        if  pass.isEmpty || email.isEmpty || repeatPass != pass   {
                 
            Common.showAlert(title: "Bilgilerinizi kontrol ediniz.", message: "Lütfen  Email ve Şifrenizi giriniz.", vc: self)
                 
                 return
             }
        
        
        createuser(email: email, paswword: pass)
        
        
        
    }
    
    func createuser (email: String, paswword : String) {
        
        
        Auth.auth().createUser(withEmail: email, password: paswword) { (result, error ) in
            
            
            if error != nil {
                
                Common.showAlert(title: "UYARI!!!", message: error?.localizedDescription ?? "Kullanıcı oluşturulamadı.", vc: self)
            } else {
                _ = self.navigationController?.popToRootViewController(animated: true)
            
                }
            }
        }
   }


        

