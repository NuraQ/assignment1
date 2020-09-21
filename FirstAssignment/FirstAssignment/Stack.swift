import Foundation


class Stack<Element>{
    var items = [Element]();
    
     func push(item : Element){
        items.append(item)
    }
     func pop() -> Element?{
        let last = items.last;
        if !items.isEmpty{
            items.removeLast();
        }
        return last;
    }
    
    func peek() -> Element?{
           return items.isEmpty ? nil : items.last
    }
    
    func isEmpty() -> Bool{
       return items.isEmpty ?  true :  false
    }
}
