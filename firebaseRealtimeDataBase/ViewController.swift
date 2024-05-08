//
//  ViewController.swift
//  firebaseRealtimeDataBase
//
//  Created by STC on 08/05/24.
//

import UIKit
import FirebaseDatabase
class ViewController: UIViewController {
    var ref = DatabaseReference.init()
    
    
    @IBOutlet weak var nameTextfield: UITextField!
 
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    
    @IBOutlet weak var ageTextfield: UITextField!
    
    
    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ref = Database.database().reference()
        // Do any additional setup after loading the view.
        view1.isHidden = true
    }
    
    @IBAction func saveData(_ sender: Any) {
        savefirebasedata()
        view1.isHidden = false
    }
    
    func savefirebasedata(){
        var dict = ["name" :nameTextfield.text!,"scName":schoolNameTextField.text!,"age":ageTextfield.text!]
        self.ref.child("chat").childByAutoId().setValue(dict)
        
    }
}

