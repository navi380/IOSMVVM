//
//  UrlExtension.swift
//  MvvmProjectCleanStructure
//
//  Created by Naveed Tahir on 10/08/2021.
//

import Foundation

extension URL {
    static var PostListUrl: URL {
        makeForEndpoint("posts")
    }
//    static func article(withID id: Article.ID) -> URL {
//        makeForEndpoint("articles/\(id)")
//    }
}

private extension URL {
    static func makeForEndpoint(_ endpoint: String) -> URL {
        URL(string: "https://jsonplaceholder.typicode.com/\(endpoint)")!
    }
}
