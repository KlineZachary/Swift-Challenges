class Person{
    var currentCard: Int
    var numWins: Int

    init(_ currentCard: Int,_ numWins: Int){
        self.currentCard = currentCard
        self.numWins = numWins
    }
}

class DeckOfCards{
    var deck: [Int]

    init(){
        for _ in 0..<52{deck.append(Int.random(0..<52))}
    }

    func serveCard() -> Int{
        return deck.removeLast()
    }

}