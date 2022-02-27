//
//  DataService.swift
//  sonDeneme
//
//  Created by Yusuf Muhammet Yıldırım on 20/01/2022.
//

import Foundation
import Firebase

let BASE_URL = "https://sondeneme-8f0f2-default-rtdb.firebaseio.com/"

class DataService {
    static let dataService = DataService()
    
    private var _BASE_REF = Database.database().reference(fromURL: "\(BASE_URL)")
    private var _ITEM_REF = Database.database().reference(fromURL: "\(BASE_URL)/items")

    var BASE_REF: DatabaseReference {
        return _BASE_REF
    }
    
    var ITEM_REF: DatabaseReference {
        return _ITEM_REF
    }
}


