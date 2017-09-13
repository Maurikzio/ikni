//
//  HomeViewController.swift
//  IKNI
//
//  Created by ALFA on 3/26/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    var collectionView: UICollectionView!
    
    @IBOutlet weak var siglasText: UITextView!
    
    //array de imagenes
    var images = [UIImage(named:"welcome"), UIImage(named:"staff"), UIImage(named:"departmentos"), UIImage(named:"events"), UIImage(named:"news"), UIImage(named:"disciplines"), UIImage(named:"media"), UIImage(named:"photos"), UIImage(named:"map"), UIImage(named:"info"), UIImage(named:"config"), ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationItem.title = "I"
        siglasText.text = "Institute of computer\nSciences and Information\nTechnologies"
        setupCollectionView()
        
        
    }
    
    //initialize the collection view and adding it to the VC's current view
    func setupCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 50
        layout.minimumInteritemSpacing = 10
        
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.register(ItemsCollectionViewCell.self, forCellWithReuseIdentifier: "itemCell")
        collectionView.backgroundColor=UIColor.white
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation*/
     
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
      //  if(segue.identifier == "aWelcome")
      //  {
      //
       // }
    //}
    

}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    //specifying the number of sections in the collection
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    //specifying the number of cells in the given section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    //use this method to deque the cell and set  it up
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! ItemsCollectionViewCell
        
        cell.awakeFromNib()
        
        return cell
    }
    
    //we use this metod to populate the data of the given cell
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let itemcell = cell as! ItemsCollectionViewCell
        itemcell.itemImageView.image = images[indexPath.row]
        
        if(indexPath.row == 0)
        {
            //itemcell.button.setTitle("hello", for: .normal)
            itemcell.texto.text = "Welcome"
        }
        else if(indexPath.row == 1)
        {
            itemcell.texto.text = "Staff directory"
        }
        else if(indexPath.row == 2)
        {
            itemcell.texto.text = "Departments"
        }
        else if(indexPath.row == 3)
        {
            itemcell.texto.text = "Calendar"
        }
        else if(indexPath.row == 4)
        {
            itemcell.texto.text = "News/Events"
        }
        else if(indexPath.row == 5)
        {
            itemcell.texto.text = "Disciplines"
        }
        else if(indexPath.row == 6)
        {
            itemcell.texto.text = "Social Media"
        }
        else if(indexPath.row == 7)
        {
            itemcell.texto.text = "Photos"
            
        }
        else if(indexPath.row == 8)
        {
            itemcell.texto.text = "Map"
            
        }
        else if(indexPath.row == 9)
        {
            itemcell.texto.text = "Information"
        }
        else if(indexPath.row == 10)
        {
            itemcell.texto.text = "Settings"
        }
        
        
    }
    
    //sets the size of the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //return CGSize(width: view.frame.width, height: 60)
        return CGSize(width: 100, height: 100)
        
    }
    
    // when user taps a cell
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //print(indexPath.row)
        
        //id del item q seleccionamos
        let idCellSelected = indexPath.row
        
        
        
        if(indexPath.row == 0)
        {
            self.performSegue(withIdentifier: "aWelcome", sender: idCellSelected)
            //print("Welcome")
        }
        else if(indexPath.row == 1)
        {
            self.performSegue(withIdentifier: "aStaff", sender: idCellSelected)
            //print("Staff directory")
        }
        else if(indexPath.row == 2)
        {
            self.performSegue(withIdentifier: "aDepartments", sender: idCellSelected)
            //print("Departments")
        }
        else if(indexPath.row == 3)
        {
            self.performSegue(withIdentifier: "aCalendar", sender: idCellSelected)
            //print("Calendar")
        }
        else if(indexPath.row == 4)
        {
            self.performSegue(withIdentifier: "aNews", sender: idCellSelected)
            //print("News/Events")
        }
        else if(indexPath.row == 5)
        {
            self.performSegue(withIdentifier: "aDisciplines", sender: idCellSelected)
            //print("Disciplines")
        }
        else if(indexPath.row == 6)
        {
            self.performSegue(withIdentifier: "aSocial", sender: idCellSelected)
            //print("Social Media")
        }
        else if(indexPath.row == 7)
        {
            self.performSegue(withIdentifier: "aPhotos", sender: idCellSelected)
            //print("Photos")
        }
        else if(indexPath.row == 8)
        {
            self.performSegue(withIdentifier: "aMap", sender: idCellSelected)
            //print("Map")
        }
        else if(indexPath.row == 9)
        {
            self.performSegue(withIdentifier: "aInfo", sender: idCellSelected)
            //print("Information")
        }
        else if(indexPath.row == 10)
        {
            self.performSegue(withIdentifier: "aSettings", sender: idCellSelected)
            //print("Settings")
        }

    }
    
}





