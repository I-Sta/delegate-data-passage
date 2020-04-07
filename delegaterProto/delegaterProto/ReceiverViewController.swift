//
//  ReceiverViewController.swift
//  delegaterProto
//
//  Created by Field Employee on 4/3/20.
//  Copyright © 2020 Field Employee. All rights reserved.
//

import UIKit

class ReceiverViewController: UIViewController, UpdateLabelTextDelegate {

    
     @IBOutlet weak var receiveLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func updateLabelText(withText text: String) {
        receiveLabel.text = text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "delegateTransfer" {
            let dest = segue.destination as! SenderViewController
        dest.delegate = self
        }
    }
}


