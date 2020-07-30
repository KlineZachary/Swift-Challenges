    if head == nil {return nil}
    let output = head
    var current = head
    var totalNodes = 0
    var currentNode = 0
    var prev : ListNode? = nil
    while current != nil{
        totalNodes += 1
        current = current?.next
    }
    current = head

    while current != nil{
        var next = current?.next
        currentNode += 1

        if currentNode == (totalNodes - n) + 1{ //on node we need to remove
            if prev == nil{
                output = output?.next
            }else{
                prev?.next = next
            }
        }

        prev = current
        current = current?.next
    }

    return output    