//
//  ViewController.swift
//  CustomTB
//
//  Created by Sudhakar on 07/02/19.
//  Copyright © 2019 Sudhakar. All rights reserved.


import UIKit




class FirstViewController: DashBoardBaseViewController,UICollectionViewDelegate,UICollectionViewDataSource,DashboardActions {
    
    
    
    func activejobs() {
        print("active jobs clicked")
    }
    
    func createJob() {
        print("create jobs clicked")
    }
    

    @IBOutlet weak var collectionView_charts: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView_charts.backgroundColor = UIColor.red
        self.floatingBtn.isHidden = false
        self.floatingBtn.addTarget(self, action: #selector(showDashboardview), for: .touchUpInside)
        self.addjob.addTarget(self, action: #selector(addjobaction), for: .touchUpInside)
        
        
        
        
        self.btnMenu.addTarget(self, action: #selector(showsidemenu), for: .touchUpInside)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
     @objc func showsidemenu() {
        
        self.slideView.showSlideView()
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
    @objc func addjobaction() {
        self.floatingBtn.isSelected = false
        self.floatingView.animHide()
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let viewCon = st.instantiateViewController(withIdentifier: "Details")
        //self.navigationController?.pushViewController(viewCon, animated: true)
        self.present(viewCon, animated:true, completion: nil)
       
        
    }
    //1
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //2
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected iem is :\(indexPath.item)")
        self.floatingBtn.isSelected = false
        self.floatingView.animHide()
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let viewCon = st.instantiateViewController(withIdentifier: "Details")
        //self.navigationController?.pushViewController(viewCon, animated: true)
        self.present(viewCon, animated:true, completion: nil)
    }
    
    //3
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
        ) -> UICollectionViewCell {
    
            let reuseIdentifier = "charts"
            let cell = collectionView_charts
                .dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
            cell.backgroundColor = .white
            // Configure the cell
            return cell
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.floatingBtn.isSelected = false
        self.floatingView.animHide()
    }

}



