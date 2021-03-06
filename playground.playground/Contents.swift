//: Playground - noun: a place where people can play

import UIKit

struct Article {
    let id: Int
}

struct ArticleManager {
    private var articles: [Article] = []

    mutating func set(articles articles: [Article]) {
        self.articles = articles
    }

    func getArticle() -> [Article] {
        return articles
    }

    mutating func sort() {
        self.articles = articles.sorted(by: { (article1, article2) in
            return article1.id > article2.id
        })
    }

}

let article1 = Article(id: 1)
let article2 = Article(id: 2)
let article3 = Article(id: 3)

var manager = ArticleManager()
manager.set(articles: [article1, article2, article3])

manager.sort()

