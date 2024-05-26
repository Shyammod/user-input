//
//  ViewController.swift
//  Exercise 2
//
//  Created by user228349 on 5/26/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Firstname: UITextField!
    @IBOutlet weak var Lstname: UITextField!
    @IBOutlet weak var Countryname: UITextField!
    @IBOutlet weak var Age: UITextField!
    @IBOutlet weak var mytext: UITextView!
    @IBOutlet weak var mylbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submit(_ sender: Any) {
        mylbl.isHidden = false
        if Firstname.text!.isEmpty == true ||
            Lstname.text!.isEmpty == true ||
            Countryname.text!.isEmpty == true ||
            Age.text!.isEmpty == true {
                mylbl.text = "Missing info!"
                
        } else {
            mylbl.text = "submitted" }
                
                }
    
    
    @IBAction func Add(_ sender: Any) {
        mytext.text = " Full Name: \(Firstname.text ?? "")\(Lstname.text ?? "")\nCountry\(Countryname.text ?? "")\nAGE: \(Age.text ?? "")"
    
    
    }
    
    @IBAction func clr(_ sender: Any) {
        Firstname.text = ""
        Lstname.text = ""
        Countryname.text = ""
        Age.text = ""
        mytext.text = ""
        mylbl.text = ""
    }
}
    




