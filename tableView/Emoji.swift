//
//  File.swift
//  tableView
//
//  Created by Olivia Mellen on 2/19/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import Foundation

class Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol:String, name:String, description:String, usage:String)
    {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
