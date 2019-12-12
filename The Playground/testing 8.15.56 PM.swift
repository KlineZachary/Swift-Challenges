func fibs(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1{
        return 1
    }
    return fibs(n - 1) + fibs(n - 2)
}
print("Enter fib test case: ")
let input = Int(readLine(strippingNewline: true)!)!
print(fibs(input)) // Test case