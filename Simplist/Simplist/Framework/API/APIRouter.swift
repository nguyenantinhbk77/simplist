//
//  APIRouter.swift
//  Simplist
//
//  Created by Tinh Nguyen on 15/6/24.
//

import Foundation

enum AnimalsRouter {
    case animalsNearYou
    case search
    
    var path: String {
        "/v2/animals"
    }
}

enum AuthTouter {
     case token
    
    var path: String {
        "/v2/token"
    }
}
