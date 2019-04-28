//
//  ShowScreen.swift
//  Travel
//
//  Created by Delvin on 28/04/19.
//  Copyright © 2019 Delvin. All rights reserved.
//

import UIKit

class ShowScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var Show: UITextView!
    @IBAction func ShowNow(_ sender: Any) {
        let testVC = storyboard?.instantiateViewController(withIdentifier: "testController") as! testController
        testVC.DelegateEnter = self
        present(testVC, animated: true, completion: nil)
        
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

extension ShowScreen: Delegate{
    func didTapEnter(username: String, number: String) {
        Show.text = username
        Show.text = number
    }
}
