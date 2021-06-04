//
//  ViewController.swift
//  birthdaynote
//
//  Created by ata altan on 4.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var Date: UITextField!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedDate = UserDefaults.standard.object(forKey: "date")
        
        if let newName  = storedName as? String {
            dateLabel.text = "Name: \(newName)"
        }
        if let newDate = storedDate as? String {
            birthdayLabel.text = "Date: \(newDate)"
        }
        
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
    
        UserDefaults.standard.set(Name.text!, forKey: "name") // kayıt aracı
        UserDefaults.standard.set(Date.text!, forKey: "date") // kayıt aracı
        
       
        dateLabel.text =  "Name: \(Name.text!)"
        birthdayLabel.text = "Birthday: \(Date.text!)"
        
        
        
    }
    

    @IBAction func clear(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedDate = UserDefaults.standard.object(forKey: "date")
        
        if (storedName as? String) != nil {  //tanımlanmış değer var ise
            UserDefaults.standard.removeObject(forKey: "name")
            dateLabel.text = "name"
        }
        if (storedDate as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "date")
            birthdayLabel.text = "date"
        }
        
        
        
        
      
        
        
        
        
    }
    

}

