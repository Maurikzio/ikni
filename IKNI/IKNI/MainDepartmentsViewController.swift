//
//  MainDepartmentsViewController.swift
//  IKNI
//
//  Created by ALFA on 3/29/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

//extension UIColor {
//    convenience init(rgb: UInt) {
//        self.init(
//            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
//            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
//            blue: CGFloat(rgb & 0x0000FF) / 255.0,
//            alpha: CGFloat(1.0)
//        )
//    }
//}

//view.backgroundColor = UIColor(rgb: 0x209624)

class MainDepartmentsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    let fondo = [UIImage(named : "BP"), UIImage(named : "KN"), UIImage(named : "PZ"), UIImage(named : "CA"), UIImage(named : "FL")]
    
    let names = ["Publishing and Printing", "Computer Sciences", "Software", "System Analysis", "Philology"]
    
    //names
    let siglas = ["ВП", "КН", "ПЗ", "СА", "ФЛ"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Groups"
        self.MyCollectionView.delegate = self
        self.MyCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "groupsCollection", for: indexPath) as! StaffCollectionViewCell
        
        //set imeages
        cell.fondoImage?.image = self.fondo[indexPath.row]
        
        cell.nameLabel.text = names[indexPath.row]
        
        cell.siglasLabel.text = siglas[indexPath.row]
        
        if(indexPath.row == 0)
        {
            //view.backgroundColor = UIColor(rgb: 0x209624)
            
            cell.siglasLabel.backgroundColor = UIColor(red: 174, green: 213, blue: 129)
        }
        else if(indexPath.row == 1)
        {
            //view.backgroundColor = UIColor(rgb: 0x209624)
            
            cell.siglasLabel.backgroundColor = UIColor(red: 248, green: 136, blue: 36)
        }
        else if(indexPath.row == 2)
        {
            //view.backgroundColor = UIColor(rgb: 0x209624)
            
            cell.siglasLabel.backgroundColor = UIColor(red: 81, green: 180, blue: 230)
        }
        else if(indexPath.row == 3)
        {
            //view.backgroundColor = UIColor(rgb: 0x209624)
            
            cell.siglasLabel.backgroundColor = UIColor(red: 252, green: 144, blue: 165)
        }
        else if(indexPath.row == 4)
        {
            //view.backgroundColor = UIColor(rgb: 0x209624)
            
            cell.siglasLabel.backgroundColor = UIColor(red: 108, green: 110, blue: 112)
        }
        
        return cell
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let idCellSelected = indexPath.row
        
        if(indexPath.row == 2)
        {
            self.performSegue(withIdentifier: "aSubjects", sender: idCellSelected)
        }
    }
    
}



