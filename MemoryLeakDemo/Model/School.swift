//
//  SchoolDataModel.swift
//  MemoryLeakDemo
//
//  Created by PIG on 2023/1/29.
//

import Foundation

class School {
    var students: [Student] = []
    
    func addmisson(of student: Student) {
        students.append(student)
    }
}
