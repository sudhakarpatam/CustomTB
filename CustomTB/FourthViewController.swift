//
//  FourthViewController.swift
//  CustomTB
//
//  Created by Sudhakar on 07/02/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import UIKit

class FourthViewController: DashBoardBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.floatingBtn.isHidden = false
        self.floatingBtn.addTarget(self, action: #selector(showDashboardview), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc func showDashboardview() {
        
        if (self.floatingBtn.isSelected == true)
        {
            self.floatingBtn.isSelected = false
            self.floatingView.animHide()
        }
        else
        {   self.floatingBtn.isSelected = true
            self.floatingView.animShow()
        }
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.floatingBtn.isSelected = false
            self.floatingView.animHide()
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
