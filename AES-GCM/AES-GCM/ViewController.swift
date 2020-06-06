//
//  ViewController.swift
//  AES-GCM
//


import UIKit
import CommonCrypto
let kMessage = "AMIT-AES-GCM-Sample"
let kPassword = "amkaes-123456789"
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // Using message & password
        
        let myString = kMessage
        let myPassword = kPassword
        do {
            let encryptedText = try MyEncryption.encryptString(plaintext: myString, password: myPassword)
            print("Encrypted : \(encryptedText)")
            
            let decryptedText = try MyEncryption.decryptString(ciphertext: encryptedText, password: myPassword)
            
              print("Decrypted : \(decryptedText)")
        }
        catch {
            
        }
       
        
    }
    

}


