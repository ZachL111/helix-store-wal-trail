struct DomainReview {
    let signal: Int
    let slack: Int
    let drag: Int
    let confidence: Int
}

enum DomainReviewLens {
    static func score(_ item: DomainReview) -> Int {
        item.signal * 2 + item.slack + item.confidence - item.drag * 3
    }

    static func lane(_ item: DomainReview) -> String {
        let value = score(item)
        if value >= 140 { return "ship" }
        if value >= 105 { return "watch" }
        return "hold"
    }
}
