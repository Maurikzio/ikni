//
//  DepartmentsViewController.swift
//  IKNI
//
//  Created by ALFA on 3/27/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class DepartmentsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    var deps = ["ACSfondo", "ALfondo", "CADfondo", "CADfondo", "CADfondo", "CADfondo" ]
    
    var siglas = ["ACS", "AL", "CAD", "PIT", "ISN", "SD"]
    
    var meaning = ["Department of Automated Control Systems", "Department of Applied Linguistics", "Department of Computer-Aided Design", "Department of Publishing Information Technologies", "Department of Information Systems and Networks", "Department of Software"]
    
    var contenidoPdf = ["ACS", "AL", "CAD", "PIT", "ISN", "SD"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Departments"
        self.MyCollectionView.delegate = self
        self.MyCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return deps.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "depCollection", for: indexPath) as! DepsCollectionViewCell
        
        //set imeages
        cell.myImageView?.image = UIImage(named: deps[indexPath.row])
        
        cell.myLabelView?.text = siglas[indexPath.row]
        
        cell.myTextView.text = meaning[indexPath.row]
        
        return cell
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let idPdf = indexPath.row
        
        self.performSegue(withIdentifier: "aInformacion", sender: idPdf)
    }
    
    //prearar la trancision de una pantalla a otra
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "aInformacion"
        {
            let idPdfRecibido = sender as! Int
            
            let objInfoDepartments: InfoDepartmentsViewController = segue.destination as! InfoDepartmentsViewController
            
            
            objInfoDepartments.nombrePdfRecibido = contenidoPdf[idPdfRecibido]
        }
    }
    

}


















