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
       if items.count < maxCapacity{
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
    
    func removeAt(index: Int){
       
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

extension Array {
    mutating func propertySort<T: Comparable>(_ property: (Element) -> T) {
           sort(by: { property($0) < property($1) })
       }
}

extension Array where Element: Hashable {
    func removingDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()

        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }

    mutating func removeDuplicates() {
        self = self.removingDuplicates()
    }
}
