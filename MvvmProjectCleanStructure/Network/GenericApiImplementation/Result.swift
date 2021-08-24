//
//  Result.swift
//  MvvmProjectCleanStructure
//
//  Created by Naveed Tahir on 10/08/2021.
//

import Foundation


enum Result<T> {
    case success(T)
    case failure(Error)
}
