//
//  ViewController.swift
//  firebaseDataStore
//
//  Created by R87 on 17/07/23.
//

import UIKit
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
        fireBase()
    }
    
    func fireBase() {
        //refa.collection("iOS").document(t1.text!).setData(["name": t2.text])
        refa.collection("iOS").document(t2.text!).updateData([t3.text])
    }
}

