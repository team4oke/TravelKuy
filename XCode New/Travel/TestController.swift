//
//  TestController.swift
//  Travel
//
//  Created by Delvin on 28/04/19.
//  Copyright © 2019 Delvin. All rights reserved.
//

import UIKit

protocol Delegate {
    func didTapEnter(username: String, number: String)
}

class testController: UIViewController {

    var DelegateEnter:Delegate!
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var txtField: UITextView!
    
    @IBOutlet var numField: UITextField!
    override func viewDidLoad() {
        userName.delegate=self
        numField.delegate=self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        numField.resignFirstResponder()
    }
    
    @IBAction func Enter(_ sender: Any) {
        txtField.text=" \(userName.text)\n \(String(describing: numField.text))"
//        DelegateEnter.didTapEnter(username: "\(userName.text)", number: "\(numField.text)")
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension testController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
}
