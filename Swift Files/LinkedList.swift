class Node{
    var val: Int
    var next: Node?
    init(_ val: Int){
        self.val = val
        self.next = nil
    }
    
    init(_ val: Int,_ next: Node?){
        self.val = val
        self.next = next
    }
}
var fifthNode = Node(5)
var fourthNode = Node(4, fifthNode)
var thirdNode = Node(3, fourthNode)
var secondNode = Node(2, thirdNode)
var head = Node(1,secondNode)

func printList(_ head: Node?){
    var current = head
    if current == nil {print("Empty List"); return}

    while current != nil{
        print("\(current?.val ?? -1) -> ", terminator: "")
        current = current?.next
    }
}

func reverseList(_ head: Node?) -> Node? {
    if head == nil {return nil}
    var current = head
    var prev : Node? = nil

    while current != nil{
        let next = prev
        prev = current
        current = current?.next
        prev?.next = next
    }
    return prev
        
}

print(printList(reverseList(head)))
//Count number of nodes then go to middle node
// func middleNodeVal(_ head: Node?) -> Int{
//     var current = head
//     var numNodes = 0
//     if current == nil {print("Empty List"); return -1}

//     while(current != nil){
//         numNodes += 1
//         current = current?.next
//     }
    
//     current = head
//     for i in 0...numNodes/2{
//         if i == numNodes/2{
//             return current?.val ?? -1
//         }
//         current = current?.next
        
//     }
    
//     return -1
    
// }

//Have one pointer inc by one and a second pointer inc by two
//Once second reaches end you are at half with first pointer

//printList(head)
// print(middleNodeVal(head))

