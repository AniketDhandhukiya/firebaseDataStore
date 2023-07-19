//
//  ViewController.swift
//  firebaseDataStore
//
//  Created by R87 on 17/07/23.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseDatabase
import FirebaseFirestore

class ViewController: UIViewController {

    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t2: UITextField!
    @IBOutlet weak var t3: UITextField!
    
    var ref : DatabaseReference!
    var refa : Firestore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        refa = Firestore.firestore()
    }


    @IBAction func saveAction(_ sender: Any) {
        //ref.child("Students").childByAutoId().setValue(["id": t1.text!,"name": t2.text!,"email": t3.text!])
        newUser()
    }
    
    func fireBase() {
        
    }
    
    func newUser(){
//        Auth.auth().createUser(withEmail: t1.text!, password: t2.text!) { authDataResult, erro in
//            print(authDataResult, erro?.localizedDescription)
//        }
//
//        refa.collection("iOS").addDocument(data: ["email": t1
//            .text,"password": t2.text])
//
        
        Auth.auth().signIn(withEmail: t1.text!, password: t2.text!) { authDataResult, error in
            print(authDataResult, error?.localizedDescription)
        }
    }
    
    
}

