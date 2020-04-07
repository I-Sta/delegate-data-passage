//
//  SenderController.swift
//  delegaterProto
//
//  Created by Field Employee on 4/3/20.
//  Copyright © 2020 Field Employee. All rights reserved.
//

import UIKit

protocol UpdateLabelTextDelegate {
    func updateLabelText(withText text: String)
}

class SenderViewController: UIViewController {
    
    var delegate : UpdateLabelTextDelegate?
    
    
    @IBOutlet weak var textField: UITextField!
    

 @IBAction func sendTextToReceiver(_ sender: UIButton) {
     delegate?.updateLabelText(withText: textField.text ?? "")
     dismiss(animated: true, completion: nil)
 }

}



