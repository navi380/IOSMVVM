//
//  ApiRemoteProtocolImplementation.swift
//  MvvmProjectCleanStructure
//
//  Created by Naveed Tahir on 10/08/2021.
//

import Foundation


class ApiRemoteImplementation: ApiProtocol {
    
    private init(){}
    static let shared = ApiRemoteImplementation()
    private let networkService = NetworkService()
    
    func postListApiCall(completion: @escaping ((Result<[Post]>) -> Void))  {
        guard let request = networkService.createRequest(url: .PostListUrl, method: .get)
        else { print("Error Creating Request. Nil URL?")
            return
        }
        networkService.dataLoader.loadData(using: request) { (data, response, error) in
            guard let data = data else {
                completion(Result.failure(error?.localizedDescription as! Error))
                return
            }
            let postData = self.networkService.decode(to: [Post].self, data: data)
            completion(Result.success(postData!))
        }
    }
}
