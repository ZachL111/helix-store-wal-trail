@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 61, capacity: 84, latency: 16, risk: 24, weight: 7)
        precondition(Policy.score(signalcase_1) == 106)
        precondition(Policy.classify(signalcase_1) == "review")
        let signalcase_2 = Signal(demand: 64, capacity: 73, latency: 15, risk: 9, weight: 13)
        precondition(Policy.score(signalcase_2) == 187)
        precondition(Policy.classify(signalcase_2) == "accept")
        let signalcase_3 = Signal(demand: 73, capacity: 105, latency: 15, risk: 19, weight: 5)
        precondition(Policy.score(signalcase_3) == 165)
        precondition(Policy.classify(signalcase_3) == "accept")
        let domainReview = DomainReview(signal: 80, slack: 28, drag: 28, confidence: 64)
        precondition(DomainReviewLens.score(domainReview) == 168)
        precondition(DomainReviewLens.lane(domainReview) == "ship")
    }
}
