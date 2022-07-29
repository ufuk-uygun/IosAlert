//
//  ViewController.swift
//  Alert
//
//  Created by ufuk on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func basicAlertClicked(_ sender: Any) {
        
        
        // create the alert
        let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        let okButton = UIAlertAction(title: "OK", style: .default){
            (UIAlertAction) in
            
            print("buttom clicked")
        }
       
        alert.addAction(okButton)
        
       // show the alert
       self.present(alert, animated: true, completion: nil)
        
        //deneme
        
        
    }
    
}

