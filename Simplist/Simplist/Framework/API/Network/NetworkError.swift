//
//  NetworkError.swift
//  Simplist
//
//  Created by Tinh Nguyen on 15/6/24.
//

import Foundation

public enum NetworkError: LocalizedError {
    case invalidServerResponse
    case invalidURL
    
    public var errorDescription: String? {
        switch self {
            case .invalidServerResponse:
                return "The server returned an invalid response."
            case .invalidURL:
                return "URL string is malformed."
        }
    }
}
