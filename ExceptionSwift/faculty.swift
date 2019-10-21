//
//  faculty.swift
//  ExceptionSwift
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


enum FacultyError: Error
{
    case invalidSalary(Salary:Double)
    case invalidEmployeeId(facultyId:Int)
    case invalidEmployeeName(facultyName:String)
}

class Faculty
{
    var facultyId: Int
    var facultyName: String
    var Salary: Double

init(facultyId:Int, facultyName: String, Salary:Double)throws
{
    if facultyId<=0
    {
        throw FacultyError.invalidEmployeeId(facultyId:facultyId)
    }
    self.facultyId=facultyId
    if facultyName.count<10
    {
        throw FacultyError.invalidEmployeeName(facultyName: facultyName)
    }
    self.facultyName=facultyName
    if Salary<900
    {
        throw FacultyError.invalidSalary(Salary:Salary)
    }
    self.Salary=Salary
}
    
}
