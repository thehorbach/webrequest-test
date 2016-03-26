//
//  Person.swift
//  webrequest-test
//
//  Created by Vyacheslav Horbach on 26/03/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import Foundation

class Person {
    private var _name: String!
    private var _height: String!
    private var _birthYear: String!
    private var _hairColor: String!
    private var _gender: String!
    
    var name: String {
        return _name
    }
    
    var height: String {
        return _height
    }
    
    var birthYear: String {
        return _birthYear
    }
    
    var hairColor: String {
        return _hairColor
    }
    
    var gender: String {
        return _gender
    }
    
    init(name: String, height: String, birthYear: String, hairColor: String, gender: String) {
        _name = name
        _height = height
        _birthYear = birthYear
        _hairColor = hairColor
        _gender = gender
    }
}