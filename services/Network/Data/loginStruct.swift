//
//  loginStruct.swift
//  services
//
//  Created by Xavier Morales on 07/05/21.
//

import Foundation

struct loginStruct: Encodable{
    let username: String
    let password: String
}

struct loginResponse: Decodable {
    let token: String
    let user_id: Int
    let email: String
    let name: String
}
