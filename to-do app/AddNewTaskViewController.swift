//
//  AddNewTaskViewController.swift
//  to-do app
//
//  Created by Norah Almaneea on 22/02/2023.
//

import UIKit

class AddNewTaskViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var taskName: UITextField!
    @IBOutlet weak var descriptiontxt: UITextField!
    @IBOutlet weak var dateTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectiv
        //Code for left padding
        setupTextField(textField: taskName)
        setupTextField(textField: descriptiontxt)
        setupTextField(textField: dateTxt)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @IBAction func setupTextField(textField: UITextField){
        //Code for left padding
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
    }
    @IBAction func backButtonPressed(){
        guard let name = taskName.text, name.isEmpty,
              let description = descriptiontxt.text, description.isEmpty,
              let date = dateTxt.text, date.isEmpty else{
            
            let alert = UIAlertController(title: "Alert", message: "Are you sure you want to abandon your tasks?", preferredStyle: UIAlertController.Style.alert)
            
            
            let abandonAction = UIAlertAction(title: "Abandon", style:
                                                UIAlertAction.Style.default) {_ in self.performSegue(withIdentifier: "backToHome", sender: self)
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style:
                                                UIAlertAction.Style.cancel) {_ in
            }
            
            // add an action (button)
            alert.addAction(abandonAction)
            alert.addAction(cancelAction)
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
            
            return
            
        }
        
        performSegue(withIdentifier: "backToHome", sender: self)
    }
}
