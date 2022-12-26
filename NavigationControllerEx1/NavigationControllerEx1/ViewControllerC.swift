//
//  ViewControllerC.swift
//  NavigationControllerEx1
//
//  Created by wizard on 2022/10/17.
//

import UIKit

class ViewControllerC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actPrevVC(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actRootVC(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    //특정한 뷰컨트롤러로 이동
    @IBAction func actSVC(_ sender: Any) {
        if let controllers = self.navigationController?.viewControllers {
            for vc in controllers {
                if vc is ViewControllerA {
                    self.navigationController?.popToViewController(vc, animated: true)
                }
            }
        }
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
