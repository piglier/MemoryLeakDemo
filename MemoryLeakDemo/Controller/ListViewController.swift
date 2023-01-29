//
//  ViewController.swift
//  MemoryLeakDemo
//
//  Created by PIG on 2023/1/27.
//

import UIKit

class ListViewController: UIViewController {
    private let button: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubView()
        constrains()
        setupUI()
        setupAction()
        
        let studentA = Student()

        let schoolA = School()

        schoolA.addmisson(of: studentA)

        studentA.school = schoolA
        
//        let school = School()
//        let student = Student(school: school)
//        school.addmisson(of: student)
        
        // Do any additional setup after loading the view.
    }
    
    @objc
    func toSecondPage() {
        let secondPage = SecondViewController()
        self.navigationController?.pushViewController(secondPage, animated: true)
    }
    
    func addSubView() {
        self.view.addSubview(button)
    }
    
    func constrains() {
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 100, paddingBottom: 20, paddingRight: 100, width: 0, height: 44, enableInsets: false)
    }
    
    func setupUI() {
        button.setTitle("Add", for: .normal);
        button.backgroundColor = .systemBlue;
        button.layer.cornerRadius = 10;
    }
    
    func setupAction() {
        button.addTarget(self, action: #selector(toSecondPage), for: .touchUpInside)
    }

}

