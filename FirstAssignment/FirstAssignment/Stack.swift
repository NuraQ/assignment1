import Foundation


class Stack<Element>{
    var items : [Element];
    var maxKey: Int;
    var maxCapacity: Int

    var sortedItems = [Int: Element]()

    init(MAX: Int){
     self.maxCapacity = MAX
        items = [Element]()
        items.reserveCapacity(MAX)
        maxKey = 0
    }

    func push(item: Element,id: Int ){
        if id > maxKey{
            maxKey = id;
        }
        if sortedItems[id] == nil && sortedItems.count < maxCapacity{
           sortedItems[id] = item ;
            items.append(item)
            print("appended")
        }
    }
     func pop() -> Element?{
        let last = items.last;
        if !items.isEmpty{
            items.removeLast();
        }
        return last!;
       
    }
    
    func insertAt(index: Int,item: Element){
        if sortedItems[index] == nil && index < maxCapacity{
           sortedItems[index] = item ;
           items.insert(item,at: index)

        }
    }
    func sort() -> [Element?] {
        var index = 0
        print("count is \(items.count)")
        var itms = [Element]()
        for i in 0..<maxKey+1{
            if let x = sortedItems[i] {
                itms.append(x)
                index += 1
            }
        }
        return itms

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
    
    func peek() -> Element?{
        return (items.isEmpty ? nil : items.last)!
    }
    
    func isEmpty() -> Bool{
       return items.isEmpty ?  true :  false
    }
    func expandSize(newSize: Int){
        maxCapacity += newSize
        items.reserveCapacity(newSize)
    }
}


