import Foundation


class Queue<Element>{
    var items = [Element]();
    
    var maxKey: Int = 0;
    var maxCapacity: Int = 0
    
    init(MAX: Int){
        self.maxCapacity = MAX
           items.reserveCapacity(MAX)
           maxKey = 0
       }
    var sortedItems = [Int: Element]()
    func enque(item: Element , id: Int){
        if id > maxKey {
            maxKey = id;
        }
        if sortedItems[id] == nil && sortedItems.count < maxCapacity{
           sortedItems[id] = item ;
            items.append(item)
            print("appended")
        }
    }
    func deque(id: Int) -> Element?{
        let first = items.first;
        if !items.isEmpty{
            items.removeFirst();
            sortedItems.removeValue(forKey: id)
        }
        return first;
    }
    func insertAt(index: Int,item: Element){
           if sortedItems[index] == nil{
              sortedItems[index] = item ;
              items.insert(item,at: index)

           }
       }
    func removeAt(index: Int){
             if sortedItems[index] != nil{
               sortedItems.removeValue(forKey: index)
             }
               let isIndexValid = items.indices.contains(index)
               if isIndexValid == true{
                   items.remove(at: index)
               }else{
                   print("no item at specified index")
           }
         }
    func sort() -> [Element] {
        var index = 0
        var  sortedArray = [Element]()
        for i in 0..<maxKey+1{
            if let x = sortedItems[i] {
                sortedArray.append(x)
                index += 1
            }
        }
        return sortedArray

    }
    func peek() -> Element?{
           return items.isEmpty ? nil : items.first
    }
    
    func isEmpty() -> Bool{
       return items.isEmpty ?  true :  false
    }
    
    func expandSize(newSize: Int){
            maxCapacity += newSize
           items.reserveCapacity(newSize)
       }
    
    
}
