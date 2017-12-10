//
//  ViewController.swift
//  MySingleViewApp
//
//  Created by 戸田　広 on 2017/12/02.
//  Copyright © 2017年 ossaaaan.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        username.delegate = self
        password.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardHide), name: NSNotification.Name.UIKeyboardDidHide, object: nil)
        
        let topColor = UIColor(red:0.00, green:0.61, blue:0.01, alpha:1)
        let bottomColor = UIColor(red:0.00, green:0.66, blue:0.67, alpha:1)
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(_ sender: Any) {
        performSegue(withIdentifier: "loginSegue", sender: nil)
    }
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField.tag {
        case 0:
            password.becomeFirstResponder()
            break
        case 1:
            textField.resignFirstResponder()
            break
        default:
            break
        }
        return true
    }
    
    @IBAction func tapScreen(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @objc func keyboardShow() {
        self.view.bounds = self.CGRectMake(0, 200, self.view.frame.size.width, self.view.frame.size.height)
    }

    @objc func keyboardHide() {
        self.view.bounds = self.CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
    }

    func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
    }
}
