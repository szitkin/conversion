//
//  ConverterView.swift
//  converter
//
//  Created by Ford Pass on 8/4/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation
import SnapKit
import UIKit


class ConverterView: UIView {
    var myConverterView: UIView!
    var textBox1: UITextField!
    var textBox2: UITextField!
    
    init() {
        super.init(frame: CGRect.init(x: 200, y: 200, width: 200, height: 200))
        //self.addSubview(myContainer)
        setTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func setTextField() {
        myConverterView = UIView()
        self.addSubview(myConverterView)
        myConverterView.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(self)
            make.right.equalTo(self)
            make.bottom.equalTo(self)
            make.height.equalTo(self)
        }
        
        textBox1 = UITextField()
        textBox1.backgroundColor = UIColor.red
        textBox1.placeholder = "192"
        textBox1.textColor = UIColor.green
        textBox1.keyboardType = .default
        textBox1.returnKeyType = .default
        myConverterView.addSubview(textBox1)
        textBox1.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(80)
            make.center.equalTo(myConverterView).offset(-30)
            //make.bottom.equalTo(myConverterView)
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
            
            textBox1.becomeFirstResponder()
            return true
            
        }
        
        textBox2 = UITextField()
        textBox2.backgroundColor = UIColor.red
        textBox2.placeholder =  " hello "
        textBox2.textColor = UIColor.green
        myConverterView.addSubview(textBox2)
        textBox2.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(80)
            make.height.equalTo(80)
            make.left.equalTo(textBox1.snp_right).offset(20)
            make.centerY.equalTo(textBox1)
            //make.centerY.equalTo(myConverterView.center).offset(200)
            
        }

}
}

