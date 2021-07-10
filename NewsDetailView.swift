//
//  NewsDetailView.swift
//  NewsApi
//
//  Created by Wasseem Bazbaz on 26/05/2021.
//

import SwiftUI

struct NewsDetailView: View {
    var article : Article
    var body: some View {
        VStack {
            Text(article.content)
                .padding()
        }
    }
}

//struct NewsDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsDetailView(article: nil)
//    }
//}
