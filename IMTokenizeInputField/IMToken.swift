//
//  IMToken.swift
//  IMTokenizeInputField
//
//  Created by Muzahidul Islam on 3/9/17.
//  Copyright © 2017 Muzahidul Islam. All rights reserved.
//

import Foundation

struct Token {
    var name: String
    var context: AnyObject?
    var id: String
    
    init(name: String, id: String) {
        self.name = name
        self.id = id
    }
    
}

extension Token: Equatable {}

func ==(lhs: Token, rhs: Token) -> Bool{
    return lhs.id == rhs.id
}

func isEqual<T: Equatable>(type: T.Type, a: Any, b: Any) -> Bool {
    guard let a = a as? T, let b = b as? T else { return false }
    
    return a == b
}


