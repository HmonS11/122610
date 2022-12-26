//
//  RootViewController.swift
//  NavigationControllerEx1
//
//  Created by wizard on 2022/10/17.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet weak var txtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ViewControllerA
        vc?.stringData = txtField.text
    }
    

}
