import Foundation


var Qu = Queue<Node>()


while (true){
    displayMenu();
    if  let line = readLine(){
        if let Number = Int(line){
            chooseAction(Number);
        }

    }

}

func displayMenu(){
    print("to add node enter 1")
    print("to delete first node from queue enter 2")
    print("to get Top node enter 3")
    print("to checkif queue is empty enter 4")

}



func getLastElement(){
    let lastElement = Qu.peek();
    if lastElement != nil{
        print("last added employee has id  \(lastElement!.id) and description: \(lastElement!.description)");
    } else{
        print("stack is empty)");
    }
}

func addElement(){
    let employee =  Node();
    Qu.enque(item: employee)

}

func popOperation(){
    let poppedValue = Qu.deque();
    if poppedValue == nil{
        print("nothing to pop , Queue is empty")
    }else{
        print("popped element has id of \(poppedValue!.id) and description: \(poppedValue!.description)");
    }
}

func checkEmpty(){
    let empty = Qu.isEmpty();
    if empty {
        print("empty stack");
    }else{
        print("stack not empty");

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
