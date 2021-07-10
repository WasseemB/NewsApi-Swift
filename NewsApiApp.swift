//
//  NewsApiApp.swift
//  NewsApi
//
//  Created by Wasseem Bazbaz on 25/05/2021.
//

import SwiftUI

@main
struct NewsApiApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = ViewModel()
            NewsView(viewModel: viewModel)
        }
    }
}
