//
//  DashBoardBaseViewController.swift
//  CustomTB
//
//  Created by Sudhakar on 07/02/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import UIKit

protocol DashboardActions {
    func activejobs()
    func createJob()
}

class DashBoardBaseViewController: UIViewController {

    let floatingBtn = UIButton()
    let floatingView = UIView()
    
    let slideView = UIView()
    
    let btnMenu = UIButton()
    
    
    let addjob = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        floatingBtn.frame = CGRect(x: self.view.frame.size.width/2 - 40, y: self.view.frame.size.height - 140, width: 80, height: 80)
        self.floatingBtn.isHidden = false
        self.floatingBtn .setTitle("+", for: .normal)
        self.floatingBtn .setTitle("X", for: .selected)
        self.floatingBtn.titleLabel?.textColor = UIColor.white
        floatingBtn.backgroundColor = UIColor.orange
        floatingBtn.layer.cornerRadius = floatingBtn.frame.size.height / 2
        floatingBtn.layer.masksToBounds = true
        floatingBtn.isHidden = true
        
        
        btnMenu.frame = CGRect(x: self.view.frame.size.width - 70, y:64, width: 40, height: 40)
        self.btnMenu.isHidden = false
        self.btnMenu .setTitle("+", for: .normal)
        self.btnMenu .setTitle("X", for: .selected)
        self.btnMenu.titleLabel?.textColor = UIColor.white
        btnMenu.backgroundColor = UIColor.orange
       // btnMenu.layer.cornerRadius = floatingBtn.frame.size.height / 2
       // btnMenu.layer.masksToBounds = true
       // btnMenu.isHidden = true
        
        
        addjob.frame = CGRect(x: 100, y: 50, width: 50, height: 50)
        self.addjob.isHidden = false
        self.addjob .setTitle("add job", for: .normal)
        self.addjob .setTitle("X", for: .selected)
        self.addjob.titleLabel?.textColor = UIColor.black
        addjob.backgroundColor = UIColor.white
        
        floatingView.frame = CGRect(x: 0, y: self.view.frame.size.height, width:self.view.frame.size.width, height:300)
        floatingView.backgroundColor = UIColor.blue
        floatingView.addSubview(addjob)
        
        
        slideView.frame = CGRect(x: self.view.frame.width, y: 0, width:self.view.frame.size.width - 100, height:self.view.frame.height)
        slideView.backgroundColor = UIColor.blue
        
        
        super.view.addSubview(slideView)
        super.view.addSubview(floatingView)
        super.view.addSubview(floatingBtn)
        super.view.addSubview(btnMenu)
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
extension UIView{
    func animShow(){
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn],
                       animations: {
                        self.center.y -= self.bounds.height
                        //self.frame = CGRect(x: se, y: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
                        self.layoutIfNeeded()
        }, completion: nil)
        
    }
    func animHide(){
        UIView.animate(withDuration: 1, delay: 0, options: [.curveLinear],
                       animations: {
                        self.center.y += self.bounds.height
                        self.layoutIfNeeded()
                        
        },  completion: {(_ completed: Bool) -> Void in
            
        })
    }
    
    func showSlideView(){
        UIView.animate(withDuration:1, delay: 0, options: [.curveEaseIn],
                       animations: {
                        self.center.x -= self.bounds.width
                        //self.frame = CGRect(x:0, y: 0, width:250, height: self.frame.height)
                        self.layoutIfNeeded()
        }, completion: nil)
        
    }
    func hideSlideView(){
        UIView.animate(withDuration:0, delay: 0, options: [.curveLinear],
                       animations: {
                        self.center.x += self.bounds.height
                        self.layoutIfNeeded()
                        
        },  completion: {(_ completed: Bool) -> Void in
            
        })
    }
    
}
