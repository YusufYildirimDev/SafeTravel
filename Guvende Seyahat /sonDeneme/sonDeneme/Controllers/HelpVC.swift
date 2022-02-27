//
//  HelpVC.swift
//  sonDeneme
//
//  Created by Yusuf Muhammet Yıldırım on 20/01/2022.
//

import UIKit

class HelpVC: UIViewController {

    @IBOutlet weak var mailTxt: UITextField!
    @IBOutlet weak var phoneTxt: UITextField!
    @IBOutlet weak var nameTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func helpSaveBtn(_ sender: Any) {
        
        
        
        
        
        let mail = mailTxt.text ?? ""
        let phone = phoneTxt.text ?? ""
        let name = nameTxt.text ?? ""
             
        if  mail.isEmpty || phone.isEmpty || name.isEmpty   {
                 
            Common.showAlert(title: "Bilgilerinizi kontrol ediniz.", message: "Lütfen  Email ve Şifrenizi giriniz.", vc: self)
                 
                 return
             }
        Common.showAlert(title: "BAŞARILI", message: " Bilgileriniz başarılı bir şekilde kayıt edilmiştir.", vc: self)
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
