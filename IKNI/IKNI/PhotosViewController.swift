//
//  PhotosViewController.swift
//  IKNI
//
//  Created by ALFA on 3/27/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let ikniImages = ["group KN-31", "we did it", "oh yeah!", "software lecture", "congrats", "lab room", "casual in Data Art"]
    
    let imageArray = [UIImage(named : "ikni1.jpg"), UIImage(named : "ikni2.jpg"), UIImage(named : "ikni3.jpg"), UIImage(named : "ikni4.jpg"), UIImage(named : "ikni5.jpg"), UIImage(named : "ikni6.jpg"), UIImage(named : "ikni7.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Photos"
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
        
        return ikniImages.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! StaffCollectionViewCell
        
        cell.smallImageView?.image = self.imageArray[indexPath.row]
        
        cell.titleLabel?.text = self.ikniImages[indexPath.row]
        
        return cell
    }
    
    
    //click en una imagen
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "showImage", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showImage"
        {
            let indexPaths = self.collectionView!.indexPathsForSelectedItems!
            
            let indexPath = indexPaths[0] as NSIndexPath
            
            let vc = segue.destination as! BigPhotoViewController
            
            vc.image = self.imageArray[indexPath.row]!
            vc.title = self.ikniImages[indexPath.row]
            
        }
    }

}












