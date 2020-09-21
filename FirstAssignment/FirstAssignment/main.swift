import Foundation


var st = Stack<Node>()

addElement();
getLastElement();
addElement();
getLastElement();
let poppedValue = st.pop();


print("stack pop operation")
getLastElement();
popOperation();
print("stack pop operation")
popOperation();






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
    if poppedValue == nil{
        print("nothing to pop , Stack is empty")
    }else{
        print("popped element is \(poppedValue)");
    }
}
