class Person{
    var currentCard: Int
    var numWins: Int

    init(_ currentCard: Int,_ numWins: Int){
        self.currentCard = currentCard
        self.numWins = numWins
    }

    func addWin(){
        self.numWins += 1
    }
}

class DeckOfCards{
    var cards: [Int]
    init(){
        self.cards = []
        for _ in 0..<52{cards.append(Int.random(in: 1...13))}
    }

    func serveCard() -> Int{
        return cards.removeLast()
    }
}


var deck = DeckOfCards()
var personOne = Person(0,0)
var personTwo = Person(0,0)

while(deck.cards.count != 0){
    personOne.currentCard = deck.serveCard()
    personTwo.currentCard = deck.serveCard()

    if personOne.currentCard > personTwo.currentCard{
        personOne.addWin()
    }else if personOne.currentCard < personTwo.currentCard{
        personTwo.addWin()
    }else{
        personOne.addWin()
        personTwo.addWin()
    }
}

print("Final Score: 1 -> \(personOne.numWins) 2 -> \(personTwo.numWins)")