//
//  DependencyInjection.swift
//  MvvmProjectCleanStructure
//
//  Created by Naveed Tahir on 10/08/2021.
//

import Foundation


class ProtocolInjection{
    static let provide = ProtocolInjection()
    private init(){}

    func postApiProtocol() -> PostListDataViewModel{
        return PostListDataViewModel(protocolArgument: ApiRemoteImplementation.shared)
    }
  
}
