//
//  main.swift
//  FirstAssignment
//
//  Created by Asal 3 on 21/09/2020.
//  Copyright © 2020 Asal 3. All rights reserved.
//

import Foundation

print("Hello, World!")
var Que = Queue<Node>()

print("Please enter your name:")

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
    print("to delete last node enter w")
    print("to get last added node enter 3")
    print("to checkif queue is empty enter 4")

}

func chooseAction(_ number: Int){
 /*   switch number {
    case 0:
        return;
    case 1:
        let employee =  Node();
        Que.enqueue(item: <#T##Node#>)
        
    case 2:
        
    }*/
}
