import Foundation


class Queue<Element>{
    var items = [Element]();
    
     func enqueue(item : Element){
        items.append(item)
    }
     func dequeue() {
        if !items.isEmpty{
            items.removeFirst();
        }else{
            print("Queue is empty ,nothing to pop")
        }
    }
    
    func peek() -> Element?{
           return items.isEmpty ? nil : items.first
    }
    
    func isEmpty() -> Bool{
       return items.isEmpty ?  true :  false
    }
}
