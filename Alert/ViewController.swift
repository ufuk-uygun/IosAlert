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

    func showAlert(withTitle title: String, andMessage message: String) {
         let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
         let defaultAction = UIAlertAction(title: "OK", style: .default, handler: {(_ action: UIAlertAction) -> Void in
         })
        
         alert.addAction(defaultAction)
         present(alert, animated: true, completion: {() -> Void in
             alert.view.layer.borderWidth = 1
         })
     }
    
    @IBAction func callFuncButtomClicked(_ sender: Any) {
        
        showAlert(withTitle: "Title", andMessage: "Called by alert func ")
    }
    

    @IBAction func basicAlertClicked(_ sender: Any) {
        
        
        // create the alert
        let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)

        // add an action (ok button)
        let okButton = UIAlertAction(title: "OK", style: .default){
            (UIAlertAction) in
            print("ok buttom clicked")
        }
        alert.addAction(okButton)
        
        // add an action (cancel button)
        let okCancel = UIAlertAction(title: "Cancel", style: .cancel){
            (UIAlertAction) in
            print("canccel buttom clicked")
        }
        alert.addAction(okCancel)
        
        
       
       // show the alert
       self.present(alert, animated: true, completion: {() -> Void in
           //alert.view.tintColor = UIColor.green
       })
        
    }
    
}

