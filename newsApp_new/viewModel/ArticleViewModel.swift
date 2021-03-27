//
//  ArticleViewModel.swift
//  newsApp_new
//
//  Created by Qasem Zreaq on 27/03/2021.
//

import Foundation


struct  ArticleListVewModel {
    
    var articles : [Article]
}

extension ArticleListVewModel {
    
    var numberOfSections : Int {
        
        return 1
    }
    func numberOfRowInSection (_ sections: Int) -> Int{
        return self.articles.count
    }
    
    func articleAtIndex (_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
        
    }
}

///MARK: Article Model

struct ArticleViewModel {

    private let article : Article
    
}

extension ArticleViewModel {
    
    init(_ article :Article) {
        self.article = article
    }
    
}

extension ArticleViewModel {
    var title :String {
        return self.article.title
    }
    
    var description: String {
        
        return self.article.description
    }
}
