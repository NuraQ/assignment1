import Foundation


var tst = Node()
var Qu = Queue<Node>(MAX: 5)
var st = Stack<Node>(MAX: 5)
var isStack: Bool = false
var str: String = " stack "
initialize()

while (true){
    displayMenu();
    if  let line = readLine(){
        if let Number = Int(line){
            if Number == 9{
                initialize()
            }
            chooseAction(Number);
        }

    }

}
func initialize (){
print("enter 0 for stack operations, enter 5 for Queue operations")
if  let line = readLine(){
  if let dataStructure = Int(line){
    if dataStructure == 0{
        isStack = true
        print("Stack Operation")
     }
     else{
        isStack = false
        print("Queue Operation")

       }
     }
   }
    
    str = isStack ? " stack "   : " Queue "

}

func displayMenu(){
    print("to add node enter 1")
    print("to delete top node  enter 2")
    print("to get Top node enter 3")
    print("to check if empty enter 4")
    print("to print sorted values and remove duplicates 6")
    print("to insert at index of your choice press 7")
    print("to remove at index of your choice press 8")
    print("to expand size press 11")
    print("to exit current dataStructure enter 9")
}

func getLastElement(){
     let lastElement = isStack ? st.peek() : Qu.peek()
     if lastElement != nil{
        print("in \(str) : last added employee has id  \(lastElement!.id) and description: \(lastElement!.description)");
    } else{
        print("\(str) is empty)");
    }
}

func addElement(){
    let employee =  Node();
    isStack ? st.push(item: employee , id: employee.id) : Qu.enque(item: employee, id: employee.id)
    print("element added to \(str)")
}

func popOperation(){
    let poppedValue = isStack ? st.pop() : Qu.deque(id: st.items[0].id)
    if poppedValue == nil{
        print("nothing to pop ,empty \(str)")
    }else{
        print("in \(str) popped element has id of \(poppedValue!.id) and description: \(poppedValue!.description)");
    }
}

func checkEmpty(){
    let empty = isStack ? st.isEmpty() : Qu.isEmpty()
    if empty {
        print("empty \(str)");
    }else{
        print("\(str) not empty");

    }
}
func readIndex() -> Int {
    print("insert desired index")
    if  let line = readLine(){
     if let index = Int(line){
         return index
     }
    }
    return 0;
}
func insertAtIndex(){
    let element = Node()
    let ind = readIndex()
    st.insertAt(index: ind , item: element)
}
func removeAtIndex(){
    let ind = readIndex()
    st.removeAt(index: ind);
}
func NlogNSort() -> [Node]{
   // st.items.removingDuplicates()
    st.items.propertySort({$0.id})
    return st.items;
}
func chooseAction(_ number: Int){
   switch number {
    case 0:
        return;
    case 1:
        addElement();
    case 2:
        popOperation();
    case 3:
        getLastElement();
    case 4:
        checkEmpty();
    case 6:
    var arrSorted = isStack ? NlogNSort() : Qu.sort()
    for item in arrSorted {
               print("item is \(item.id)")
       }
   case 7:
    insertAtIndex();
   case 8:
    removeAtIndex();
   case 11:
   isStack ? st.expandSize(newSize: 5) : Qu.expandSize(newSize: 5)
    
   default:
    print("please enter a valid number")
    }
}
