import Foundation


class Queue<Element>{
    var items = [Element]();
    
     func enque(item : Element){
        items.append(item)
    }
     func deque() -> Element?{
        let first = items.first;
        if !items.isEmpty{
            items.removeFirst();
        }
        return first;
    }
    
    func peek() -> Element?{
           return items.isEmpty ? nil : items.first
    }
    
    func isEmpty() -> Bool{
       return items.isEmpty ?  true :  false
    }
}
