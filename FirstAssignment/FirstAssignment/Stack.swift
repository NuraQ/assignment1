import Foundation


class Stack<Element>{
    var items : [Element];
    var maxKey: Int;
    var maxCapacity: Int
//    init(){
//     items = [Element]();
//    }
    var sortedItems = [Int: Element]()

    init(MAX: Int , proto: Element){
        self.maxCapacity = MAX
     items = [Element](repeating: proto,count: MAX)
     maxKey = 0
    }

    func push(item: Element,id: Int ){
        if id > maxKey{
            maxKey = id;
        }
        if sortedItems[id] == nil{
           sortedItems[id] = item ;
            items.append(item)
        }
    }
     func pop() -> Element?{
        let last = items.last;
        if !items.isEmpty{
            items.removeLast();
        }
        return last;
    }
    
    func insertAt(index: Int,item: Element){
        if sortedItems[index] != nil{
           sortedItems[index] = item ;
        }
        items.insert(item,at: index)
    }
    func sort() -> [Element] {
        var index = 0
        for i in 0..<maxKey{
            if sortedItems[i] != nil{
                items[index] = sortedItems[i]!
                index += 1
            }
        }
        return items

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
           return items.isEmpty ? nil : items.last
    }
    
    func isEmpty() -> Bool{
       return items.isEmpty ?  true :  false
    }
}
