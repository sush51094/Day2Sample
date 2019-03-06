//
//  ViewController.swift
//  Day2Sample
//
//  Created by MacStudent on 2019-03-05.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lblmessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func switchonoff(_ sender: UISwitch) {
        
        
        if (sender.isOn)
        {
            self.lblmessage.text = "switch is on"
        }
        else
        
        {
            self.lblmessage.text = "switch is off"
        }
        
        
        
        
    }
    
    
    
    @IBAction func btnshowAlertClick(_ sender: UIButton) {
        
        
     //   let alert = UIAlertController(title: "Alert", message: "How are you>", preferredStyle: .actionSheet)
        

        //self.showAlert()
     // self.showActionSheet()
    self.showInputAlert()
        
    }
    

    func showAlert()
    {
        let alert = UIAlertController(title: "Alert", message: "How are you>", preferredStyle: .alert)
        
        let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action:UIAlertAction) in
            print("Cancel Click")
        })
        
        let actionDestrictive = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alert.addAction(actionDefault)
        alert.addAction(actionCancel)
        alert.addAction(actionDestrictive)
        
        self.present(alert, animated: true)
    }
    

    func showActionSheet()
    {
        let alert = UIAlertController(title: "Alert", message: "How are you>", preferredStyle: .actionSheet)
        
        let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action:UIAlertAction) in
            print("Cancel Click")
        })
        
        let actionDestrictive = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alert.addAction(actionDefault)
        alert.addAction(actionCancel)
        alert.addAction(actionDestrictive)
        
        self.present(alert, animated: true)
    }
    
    func showInputAlert()
    {
        let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your name here..."
        })
        
        alert.addTextField { (textField) in
            textField.isSecureTextEntry = true
            textField.placeholder = "Input your password here..."
        }
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let name = alert.textFields?.first?.text {
                print("Your name: \(name)")
            }
            
            if let name = alert.textFields?[1].text {
                print("Your password: \(name)")
            }
        }))
        
        self.present(alert, animated: true)
        
        
        
        
    }
    
    @IBAction func goToNextScreen(_ sender: UIButton) {
        
        var sb = UIStoryboard(name: "Main", bundle: nil)
        
        var lineVC = sb.instantiateViewController(withIdentifier: "LineVC") as!
        
        LineViewController
        
        self.present(lineVC,animated: true)
        
        
    }
}
