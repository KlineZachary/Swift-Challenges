public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    if head == nil {return nil}
    var output = head
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
}