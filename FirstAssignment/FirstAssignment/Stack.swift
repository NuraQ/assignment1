import Foundation


class Stack<Element>{
    var items : [Element];
    var index: Int;
//    init(){
//     items = [Element]();
//    }
    var sortedItems = [Int: Element](minimumCapacity: <#T##Int#>)

    init(MAX: Int , proto: Element){
    
     index = 0;
     items = [Element](repeating: proto,count: MAX)
    
    }

    func push(item: Element,id: Int ){
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
    
    func removeAt(index: Int,item: Element){
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
