//
//  IntroViewController.swift
//  CustomTB
//
//  Created by Sudhakar on 09/02/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginaction(_ sender: Any) {
        
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let viewCon = st.instantiateViewController(withIdentifier: "TabView") as! MyTabViewController
        self.navigationController?.pushViewController(viewCon, animated: true)
        
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
