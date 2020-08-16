struct DeckOfCards{

    var cards: [Int]
    var deckSize: Int{
        return cards.count
    }
    init(){
        cards = []
        for _ in 0..<52 {cards.append(Int.random(in: 1...13))}
    }
    mutating func getCard() -> Int{
        return cards.removeLast()
    }

    func getDeckSize() -> Int{
        return cards.count
    }
}

struct Person{
    var numWins: Int
    var currentCard: Int

    init(){
        numWins = 0
        currentCard = 0
    }
}

var personOne = Person()
var personTwo = Person()
var deck = DeckOfCards()

while deck.deckSize != 0{
    personOne.currentCard = deck.getCard()
    personTwo.currentCard = deck.getCard()

    if personOne.currentCard > personTwo.currentCard{
        personOne.numWins += 1
    }else if personOne.currentCard < personTwo.currentCard{
        personTwo.numWins += 1
    }else{
        personOne.numWins += 1
        personTwo.numWins += 1
    }
}
print("Person One wins: \(personOne.numWins)")
print("Person Two wins: \(personTwo.numWins)")

if personOne.numWins > personTwo.numWins {
    print("Person One Wins")
}else if personOne.numWins < personTwo.numWins{
    print("Person Two Wins")
}else{
    print("Both players Win")
}