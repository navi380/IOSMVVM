//
//  PostListViewModel.swift
//  MvvmProjectCleanStructure
//
//  Created by Naveed Tahir on 10/08/2021.
//

import Foundation

class PostListDataViewModel {
    var postData = [Post]()
    var myProtocol : ApiProtocol?
    
    init(protocolArgument : ApiProtocol){
        myProtocol  = protocolArgument
    }
    
    func getPostListData(completion: @escaping (([Post]) -> Void)) {
        myProtocol?.postListApiCall(completion: { result in
            switch result{
            case let .success(posts):
                self.postData = posts
                completion(self.postData)
            case .failure(_):
                print("error")
            }
        })
    }
}
