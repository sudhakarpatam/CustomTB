//
//  SecondViewController.swift
//  CustomTB
//
//  Created by Sudhakar on 07/02/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import UIKit

@IBDesignable
class TTTextField: UITextField {
    @IBInspectable var borderWidth: Double {
        get {
            return Double(self.layer.borderWidth)
        }
        set {
            self.layer.borderWidth = CGFloat(newValue)
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set {
            self.layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable var bottomBorder : UIView {
        get {
            self.translatesAutoresizingMaskIntoConstraints = false
            self.borderStyle = .none
            self.backgroundColor = UIColor.clear
            let width: CGFloat = 1.0
            let borderLine = UIView(frame: CGRect(x: 0, y: self.frame.height - width, width: self.frame.width, height: width))
            borderLine.backgroundColor = UIColor.red
            
            return borderLine
        }
        set {
            self.translatesAutoresizingMaskIntoConstraints = false
            self.borderStyle = .none
            self.backgroundColor = UIColor.clear
            let width: CGFloat = 1.0
            let borderLine = UIView(frame: CGRect(x: 0, y: self.frame.height - width, width: self.frame.width, height: width))
            borderLine.backgroundColor = UIColor.red
            
        }
    }
    
}
extension UITextField {
    func setBottomBorder(withColor color: UIColor)
    {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.borderStyle = .none
        self.backgroundColor = UIColor.clear
        let width: CGFloat = 1.0
        let borderLine = UIView(frame: CGRect(x: 0, y: self.frame.height - width, width: self.frame.width, height: width))
        borderLine.backgroundColor = color
        self.addSubview(borderLine)
    }
}

class SecondViewController: DashBoardBaseViewController {
    
    @IBOutlet weak var tfd_username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.floatingBtn.isHidden = false
        self.floatingBtn.addTarget(self, action: #selector(showDashboardview), for: .touchUpInside)
        // Do any additional setup after loading the view.
        self.tfd_username.setBottomBorder(withColor: .red)
        self.tfd_username.backgroundColor = UIColor.green
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
    // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
     
    }
    */

}
