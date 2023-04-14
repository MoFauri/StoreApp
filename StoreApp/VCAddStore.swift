//
//  VCAddStore.swift
//  StoreApp
//
//  Created by Mohammad Alfauri on 10/04/2023.
//

import UIKit

class VCAddStore: UIViewController {

    @IBAction func bustorenamesave(_ sender: Any) {
        let store = StoreType(context: contexxt)
        store.name = Txtstorename.text
        do {
            appdelegate.saveContext()
            Txtstorename.text = ""
            print("saveit")
        }
    }
    
    @IBAction func buback(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var Txtstorename: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
