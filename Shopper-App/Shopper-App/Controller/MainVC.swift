//
//  ViewController.swift
//  Shopper-App
//
//  Created by Kafkas Baranseli on 09/05/2019.
//  Copyright © 2019 Baranseli. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtFld: CurrencyTxtFld!
    @IBOutlet weak var itemTxtFld: CurrencyTxtFld!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 007 to create UIButton
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size .width, height: 50))
        calcBtn.backgroundColor = UIColor.orange
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(UIColor.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        // 009 to appearance of calcBtn and disappearance it
        wageTxtFld.inputAccessoryView = calcBtn
        itemTxtFld.inputAccessoryView = calcBtn
        
        // 015
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
// 008 function of the button created on 007.
    // 016 also this func for show up the labels which are hidden by default
    @objc func calculate () {
        if let wageTxtFld = wageTxtFld.text, let itemTxtFld = itemTxtFld.text {
            if let wage = Double(wageTxtFld), let item = Double(itemTxtFld) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: item))"
            }
        }
    }
// 014 to hide the
    @IBAction func clearCalcBtnClicked(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxtFld.text = " "
        itemTxtFld.text = " "
        
    }
    
    
    
}

