//
//  APIManager.swift
//  Simplist
//
//  Created by Tinh Nguyen on 15/6/24.
//

import Foundation

protocol APIManagerProtocol {
    func perform(_ request: RequestProtocol, authToken: String) async throws -> Data
}

final class APIManager: APIManagerProtocol {
    
    private let urlSession: URLSession
    
    init(urlSession: URLSession = URLSession.shared) {
        self.urlSession = urlSession
    }
    
    func perform(_ request: any RequestProtocol, authToken: String) async throws -> Data {
        let (data, response) = try await urlSession.data(for: request.createURLRequest(autheToken: authToken))
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidServerResponse
        }
        
        return data
    }
}
