//
//  Node.swift
//  FirstAssignment
//
//  Created by Asal 3 on 21/09/2020.
//  Copyright © 2020 Asal 3. All rights reserved.
//

import Foundation
class Node {
    
    var id: Int;
    var description: String;
    
    init(){
        self.id = Int.random(in: 0..<100);
        self.description = "The Employee with the following id \(self.id) is Awesome!"
    }
    
}
