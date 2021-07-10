//
//  ViewModel.swift
//  NewsApi
//
//  Created by Wasseem Bazbaz on 25/05/2021.
//

import Foundation

class ViewModel : ObservableObject {
    private var model : ApiModel<Article,Response> = createApi()
    @Published public var articles = [Article]()
    
    static func createApi() -> ApiModel<Article,Response> {
        let newsApi:String = "https://newsapi.org/v2/everything?q=tesla&pageSize=10&apiKey=[APIKEY]"
        return ApiModel(api: newsApi)
    }
    
    func loadData() {
        model.getArticles{ response in
            DispatchQueue.main.async {
                self.articles = response.articles
            }
        }
    }
    
}
