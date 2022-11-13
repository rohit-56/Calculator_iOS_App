//
//  Employee.swift
//  Calculator
//
//  Created by Rohit Sharma on 13/11/22.
//

import Foundation

class Employee {
    var empName : String!
    var email : String?
    var salary : Float?
    var designation : String!
    
    init(empName: String!, designation: String!) {
        self.empName = empName
        self.designation = designation
    }
    
}

struct Company {
    let companyName : String!
    var location : String?
    
    init(companyName: String!, location: String? = nil) {
        self.companyName = companyName
        self.location = location
    }
}
