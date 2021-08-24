//
//  ApiProtocol.swift
//  MvvmProjectCleanStructure
//
//  Created by Naveed Tahir on 10/08/2021.
//

import Foundation

protocol ApiProtocol {
    func postListApiCall(completion: @escaping ((Result<[Post]>) -> Void))
}
