//
//  ContentView.swift
//  NewsApi
//
//  Created by Wasseem Bazbaz on 25/05/2021.
//

import SwiftUI

struct NewsView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        NavigationView {
            List(viewModel.articles, id: \.id) { article in
                NavigationLink(
                    destination: NewsDetailView(article: article),
                    label: {
                        VStack {
                            Text(article.title)
                                .padding()
                        }
                    })
                
            }
            .onAppear(perform: viewModel.loadData)
            .navigationTitle("NewsApi")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ViewModel()
        NewsView(viewModel: viewModel)
    }
}
