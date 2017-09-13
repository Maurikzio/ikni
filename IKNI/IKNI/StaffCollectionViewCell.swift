//
//  StaffCollectionViewCell.swift
//  IKNI
//
//  Created by ALFA on 3/28/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class StaffCollectionViewCell: UICollectionViewCell {
    
    //staff
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nombreLabelView: UILabel!
    @IBOutlet weak var cargoLabelView: UILabel!
    
    //calendar
    @IBOutlet weak var dataLabelView: UILabel!
    @IBOutlet weak var newsLabelView: UILabel!
    @IBOutlet weak var infoLabelView: UILabel!
    
    
    //photos
    @IBOutlet weak var smallImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    //groups
    
    @IBOutlet weak var fondoImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var siglasLabel: UILabel!
    
}
