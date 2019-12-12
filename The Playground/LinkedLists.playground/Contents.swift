public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
 }

func reverseList(_ head: ListNode?) -> ListNode? {
    if (head == nil) || (head?.next == nil) {return head}
    var prev : ListNode? = nil
    var current = head
    while(current != nil){
        let next = prev //local prev var
        prev = current //prev and current pointing at same
        current = current?.next //move current forward
        prev?.next = next //set prev next to local next
    }
    return prev
}

func printList(_ head: ListNode?){
    var current = head
    if(head == nil) {print("Empty Linked List")}
    else if(head?.next == nil) {print("\(head?.val ?? -1) -> nil")}
    while(current != nil){
        print("\(current?.val ?? -1) -> ", terminator: "")
        current = current?.next //go to next node
        if(current == nil) {print("nil", terminator: "")} //end of LL
    }
}

//Does not remove head or tail
func remove(_ head: ListNode?, value: Int){
    var current = head
    var prev : ListNode? = nil
    if(current == nil) {print("Empty List"); return;}
//    else if(current?.val == value) {current = current?.next; return;} //if head is the value
    while(current?.next != nil){
        if(current?.val == value){
            prev?.next = current?.next
        }
        prev = current
        current = current?.next
    }
}

func addNode(_ head: ListNode?,_ value: Int){
    let newNode = ListNode(value)
    var current = head
    if current == nil{current = newNode; return;}
    while(current?.next != nil){
        current = current?.next
    }
    current?.next = newNode
}



//Create LL and Print
var head = ListNode(2)
addNode(head,5)
addNode(head,6)
addNode(head,7)
printList(head)
print()

remove(head, value: 2)
printList(head)
print()






