import Foundation


var st = Stack<Node>()


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
    print("to delete last node enter 2")
    print("to get last added node enter 3")
    print("to checkif stack is empty enter 4")

}



func getLastElement(){
    let lastElement = st.peek();
    if lastElement != nil{
        print("last added employee has id  \(lastElement!.id) and description: \(lastElement!.description)");
    } else{
        print("stack is empty)");
    }
}

func addElement(){
    let employee =  Node();
    st.push(item: employee)

}

func popOperation(){
    let poppedValue = st.pop();
    if poppedValue == nil{
        print("nothing to pop , Stack is empty")
    }else{
        print("popped element has id of \(poppedValue!.id) and description: \(poppedValue!.description)");
    }
}

func checkEmpty(){
    let empty = st.isEmpty();
    if empty {
        print("empty stack");
    }else{
        print("stack not empty");

    }
}
func chooseAction(_ number: Int){
   switch number {
    case 0:
        return;2
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
