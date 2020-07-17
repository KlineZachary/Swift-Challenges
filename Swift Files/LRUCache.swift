//Not Done
// class LRUCache {

//     var capacity: Int
//     var storage: [Int : Int] = [:]
//     var leastRecently: Int

//     init(_ capacity: Int) {
//         self.capacity = capacity
//         self.storage = [:]
//         leastRecently = 0
//     }
    
//     func get(_ key: Int) -> Int {
//         if let value = storage[key]{
//             return value
//         }else{
//             return -1
//         }
//     }
    
//     func put(_ key: Int, _ value: Int) {
//         if storage.count != capacity && storage[key] == nil{
//             storage[key] = value
//             leastRecently = key
//         }else if storage.count == capacity && storage[key] == nil{
//             storage.removeValue(forKey: leastRecently)
            

//             storage[key] = value


//         }
//     }
// }

// /**
//  * Your LRUCache object will be instantiated and called as such:
//  * let obj = LRUCache(capacity)
//  * let ret_1: Int = obj.get(key)
//  * obj.put(key, value)
//  */