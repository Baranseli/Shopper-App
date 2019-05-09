//
//  CurrencyTxtFld.swift
//  Shopper-App
//
//  Created by Kafkas Baranseli on 09/05/2019.
//  Copyright © 2019 Baranseli. All rights reserved.
//

import UIKit



/*
 awakeFromNib:
 The nib-loading infrastructure sends an awakeFromNib message to each object recreated from a nib archive, but only after all the objects in the archive have been loaded and initialized. When an object receives an awakeFromNib message, it is guaranteed to have all its outlet and action connections already established.
 
 viewDidLoad:
 This method is called after the view controller has loaded its view hierarchy into memory. This method is called regardless of whether the view hierarchy was loaded from a nib file or created programmatically in the loadView method. You usually override this method to perform additional initialization on views that were loaded from nib files.
 */


// 003 if we want to make design on storyboard by coding add above the class @IBDesignable than below the class prepareforinterfacebuilder

@IBDesignable
class CurrencyTxtFld: UITextField {

    // 017 draw func. just write draw. When working with draw CGRect, clipsToBounds in mandatory!!!
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8033391497, green: 0.8033391497, blue: 0.8033391497, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = UIColor.black
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        // 019 to set local currency
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }
    
    override func prepareForInterfaceBuilder() {
        // 005 call it here
        customiseView()
    }
    
    
    // 001 to build custom text field features awakeFromNib, than super awakefromnib
    override func awakeFromNib() {
        super .awakeFromNib()
        // 006 call it and here
        customiseView()
       
       
        
    }
    
    // 004 just after prepareForInterfaceBuilder write below func than all above drop down into it. Nah!!!
    func customiseView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)     // = color Literal
        // by coding  backgroundColor = UIColor(red: 25.0/255.0, green: 25.0/255.0, blue: 25.0/255.0, alpha: 25.0/255.0)
        
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        // 018 add clipToBounds here too
        clipsToBounds = true
        
        // 002 to make attributed strings
        if let p = placeholder {
            // NSAttributedString for custom strings
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = UIColor.white
        }
    }
    
}
