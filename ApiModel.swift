//
//  ApiModel.swift
//  NewsApi
//
//  Created by Wasseem Bazbaz on 25/05/2021.
//

import Foundation

struct ApiModel<Result,Response> where Response : Decodable {
    private var articles = [Result]()
    private var api: String
    
    init(api: String) {
        self.api = api
    }
    mutating func getArticles(completionHandler: @escaping (Response) -> Void) {
        print("call loadData")
        guard let url = URL(string: api) else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    completionHandler(decodedResponse)
                }
            }
        }.resume()
    }
}
