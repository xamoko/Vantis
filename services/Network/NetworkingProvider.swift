//
//  NetworkingProvider.swift
//  services
//
//  Created by Xavier Morales on 07/05/21.
//

import Foundation
import Alamofire

final class NetworkingProvider{
    static let shared = NetworkingProvider()
    
    private let KBaseUrl = "http://34.239.109.204"
    private let KStatusOk = 200...209
    
    func login(user:loginStruct){
        let url = "\(KBaseUrl)/api/v1/login/"
        AF.request(url, method: .post, parameters: user, encoder: JSONParameterEncoder.default).validate(statusCode: 200...209).responseDecodable(of:loginResponse.self){
            response in
            
            if let user = response.value?.token{
                print("Succes: \(response)")
            }else{
                print("Error: \(response.error)")
            }
        }
    }
    
}
