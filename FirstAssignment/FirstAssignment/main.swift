import Foundation


var Qu = Queue<Node>()
var st = Stack<Node>()
var isStack: Bool = false
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
}

func displayMenu(){
    print("to add node enter 1")
    print("to delete top node  enter 2")
    print("to get Top node enter 3")
    print("to check if empty enter 4")
    print("to exit current dataStructure enter 9")
}

func getLastElement(){
     let lastElement = isStack ? st.peek() : Qu.peek()
    if lastElement != nil{
        print("last added employee has id  \(lastElement!.id) and description: \(lastElement!.description)");
    } else{
        print("stack is empty)");
    }
}

func addElement(){
    let employee =  Node();
    isStack ? st.push(item: employee) : Qu.enque(item: employee)

}

func popOperation(){
    let poppedValue = isStack ? st.pop() : Qu.deque()
    if poppedValue == nil{
        print("nothing to pop , Queue is empty")
    }else{
        print("popped element has id of \(poppedValue!.id) and description: \(poppedValue!.description)");
    }
}

func checkEmpty(){
    let empty = isStack ? st.isEmpty() : Qu.isEmpty()
    if empty {
        print("empty stack");
    }else{
        print("not empty");

    }
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
   default:
    print("please enter a valid number")
    }
}
