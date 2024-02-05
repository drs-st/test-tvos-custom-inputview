//
//  ViewController.swift
//  TestKeyboard
//
//  Created by Dries Steegmans on 22/01/2024.
//

import UIKit

class ViewController: UIViewController {

    private let textField = UITextField()
    internal let customInputView = UIInputView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        // Do any additional setup after loading the view.
        view.addSubview(textField)

        textField.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = textField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let verticalConstraint = textField.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        let widthConstraint = textField.widthAnchor.constraint(equalToConstant: 200)
        let heightConstraint = textField.heightAnchor.constraint(equalToConstant: 50)
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])

        customInputView.backgroundColor = .green
        textField.inputView = customInputView

    }

}

