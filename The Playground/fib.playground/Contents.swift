func fibs(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1{
        return 1
    }
    return fibs(n - 1) + fibs(n - 2)
}
print(fibs(3)) // Test case
