//
//  ViewController.swift
//  CharactorCounter
//
//  Created by jun on 2019/05/24.
//  Copyright © 2019 jun yamada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //private let lable;
    
    private let label: UILabel = UILabel();
    //private let input: UITextField = UITextField();
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let input: UITextField = UITextField();
        input.frame = CGRect(x: 10, y: 100, width: UIScreen.main.bounds.size.width-20, height: 38)
        input.keyboardType = .default
        input.borderStyle = .roundedRect
        input.returnKeyType = .done
        //input.delegate = self

        input.addTarget(self, action: #selector(textFieldEditingChanged(textField:)), for: .editingChanged)
        view.addSubview(input)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        label.sizeToFit()
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func textFieldEditingChanged(textField: UITextField){
        label.text = textField.text?.count.description
    }
}

