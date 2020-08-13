func maxProfit(_ prices: [Int]) -> Int {
    if prices.count == 0 {return 0}
    var maxProfit = 0
    var minValue = Int.max
    for i in 0..<prices.count{
        let price = prices[i]
        if price < minValue {minValue = price}
        else if price - minValue > maxProfit{maxProfit = price - minValue}
    }

    return maxProfit
}
print(maxProfit([7,6,4,3,1]))


