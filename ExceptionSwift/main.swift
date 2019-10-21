//
//  main.swift
//  ExceptionSwift
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

do
{
    let f1=try Faculty(facultyId: 1, facultyName: "Ankitajain", Salary: 1000)

    f1.Iprint()
    try f1.setName(name: "ankita")
    print(f1.facultyName)
}
catch FacultyError.invalidEmployeeId(let facultyId)
{
    print("Invalid id:\(facultyId)")
}
catch FacultyError.invalidEmployeeName(let facultyName)
{
    print("Invalid Name\(facultyName)")
}
catch FacultyError.invalidSalary(let Salary)
{
    print("Invalid Salary\(Salary)")
}
