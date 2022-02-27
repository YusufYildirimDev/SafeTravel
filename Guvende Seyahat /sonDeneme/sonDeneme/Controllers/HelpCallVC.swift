//
//  HelpCallVC.swift
//  sonDeneme
//
//  Created by Yusuf Muhammet Yıldırım on 20/01/2022.
//

import UIKit

class HelpCallVC: UIViewController {

    @IBOutlet weak var helpCellDangerImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func helpCellSendBtn(_ sender: Any) {
        
        
        Common.showAlert(title: "UYARI!!!", message: "Yardıma ihtiyacınız olduğu konumunuz ile beraber kayıtlı kullanıcılara ulaştırılmıştır.", vc: self)
        
        
    }
  
}
