//
//  PopupVC.swift
//  Travel
//
//  Created by Delvin on 26/04/19.
//  Copyright © 2019 Delvin. All rights reserved.
//

import UIKit

class PopupVC: UIViewController {

    @IBAction func CloseDesti(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func CloseResto(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func CloseHotel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func DiscardH(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

    
    @IBOutlet var nameHotel: UITextField!
    
    @IBOutlet var costLabel: UILabel!

    @IBOutlet var priceSlider: UISlider!
    @IBOutlet var daySlider: UISlider!
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameHotel.resignFirstResponder()
    }
    
    let minPrice = 1000.0
    let maxPrice = 10000000.0
    let minDay = 1.0
    let maxDay = 30.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initValue()
    }
    
    func initValue(){
        priceSlider.minimumValue = Float(minPrice)
        priceSlider.maximumValue = Float(maxPrice)
        daySlider.minimumValue = Float(minDay)
        daySlider.maximumValue = Float(maxDay)
        
        priceSlider.value = Float(minPrice)
        daySlider.value = Float(minDay)
        
        priceLabel.text = "IDR \(minPrice)"
        dayLabel.text = "\(minDay)"
        updateCostValueLabel()
    }

    let step1: Float = 5000
    @IBAction func priceValueChange(_ sender: UISlider) {
        let roundedValue = round(sender.value / step1) * step1
        sender.value = roundedValue
        priceLabel.text = ("IDR \(String(Int(sender.value)))")
        updateCostValueLabel()
    }
    
    let step2: Float = 1
    @IBAction func dayValueChange(_ sender: UISlider) {
        let roundedValue = round(sender.value / step2) * step2
        sender.value = roundedValue
        dayLabel.text = ("\(String(Int(sender.value)))")
        updateCostValueLabel()
    }
    
    func updateCostValueLabel(){
        let price = priceSlider.value
        let day = daySlider.value
        let costValue = price * day
        
        costLabel.text = ("IDR \(String(Int(costValue)))")
    }
}
