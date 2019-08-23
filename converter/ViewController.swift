//
//  ViewController.swift
//  converter
//
//  Created by Ford Pass on 8/4/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController , UITextFieldDelegate {
    var textInput: String = " "
    var numberInput: Float = 0.0
    var textResult: String  = " "
    var numberResult: Float = 0.0
    var myConverter = DWConverter()

    @objc func viewTapped() {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myView = ConverterView()
        myView.textBox1.delegate = self
        myView.textBox2.delegate = self
        myView.textBox1.keyboardType = .numberPad
        view.addSubview(myView)
        myView.snp.makeConstraints {(make) in
            make.edges.equalToSuperview()
            myView.textBox1.allowsEditingTextAttributes = true
           
        }
                let tapRecogniser = UITapGestureRecognizer()
                tapRecogniser.addTarget(self, action: #selector(self.viewTapped))
                self.view.addGestureRecognizer(tapRecogniser)
        
        
        
        viewTapped()
        myView.textBox1.becomeFirstResponder()
        if let unwrapped = myView.textBox1.placeholder {
            textInput = unwrapped
            numberInput = (textInput as NSString).floatValue
            myConverter.userValue = numberInput
            numberResult = myConverter.miles2km()
            textResult = String(format: "%.4f", numberResult)
            myView.textBox2.placeholder = "\(textResult)"
        }
        
    
//        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//
//            viewTapped()
//            myView.textBox1.becomeFirstResponder()
//                if let unwrapped = myView.textBox1.placeholder{
//                    textInput = unwrapped
//                    numberInput = (textInput as NSString).floatValue
//                    myConverter.userValue = numberInput
//                    numberResult = myConverter.miles2km()
//                    textResult = String(format: "%.4f", numberResult)
//                    myView.textBox2.placeholder = "\(textResult)"
//
//                }
//
//            return true
//        }
//    }
    
      
}
}

