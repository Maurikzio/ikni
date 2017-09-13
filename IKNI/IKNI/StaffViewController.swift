//
//  StaffViewController.swift
//  IKNI
//
//  Created by ALFA on 3/27/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class StaffViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    //la coleccion
    @IBOutlet weak var myStaffCollectionView: UICollectionView!
    
    @IBOutlet weak var greetingsLabelView: UILabel!
    
    var collectionView: UICollectionView!
    
    var photos = ["Medyk.jpg", "Tesluk.jpg", "Shakhovska.jpg", "struk.jpg", "Pavych.jpg", "Denysjuk.jpg", "Lytvyn.jpg",]
    var cargo = ["IKNI Director", "IKNI 1st Deputy", "IKNI Deputy Director", "IKNI DeputyDean", "IKNI DeputyDean", "IKNI Dean", "IKNIDean",]
    var nombre = ["Medikovsky Mykola O.", "Teslyuk Vasil M.", "Zhaxovska Nataliya", "Struk Yevgen S.", "Pavich Nataliya Y.", "Denisiyuk Pablo Y.", "Livtvin Vasil V." ]
    
    var contenidoPdf = ["Medykovskyy", "Teslyuk", "Shakhovska", "Struk", "Pavych", "Denysyuk", "Lytvyn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Staff Directory"
        greetingsLabelView.text = "Meet the IKNI team"
        self.myStaffCollectionView.delegate = self
        self.myStaffCollectionView.dataSource = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "staffCollection", for: indexPath) as! StaffCollectionViewCell
        
        cell.photoImageView.image = UIImage(named: photos[indexPath.row])
        
        cell.cargoLabelView.text = cargo[indexPath.row]
        
        cell.nombreLabelView.text = nombre[indexPath.row]
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let idPdf = indexPath.row
        
        self.performSegue(withIdentifier: "aInformacionStaff", sender: idPdf)
    }

    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "aInformacionStaff"
        {
            let idPdfRecibido = sender as! Int
            
            let objInfoStaff: InfoStaffViewController = segue.destination as! InfoStaffViewController
            
            objInfoStaff.nombrePdfRecibido = contenidoPdf[idPdfRecibido]
        }
    }
}
