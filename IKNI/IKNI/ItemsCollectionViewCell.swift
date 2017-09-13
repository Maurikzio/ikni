//
//  ItemsCollectionViewCell.swift
//  IKNI
//
//  Created by ALFA on 3/27/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class ItemsCollectionViewCell: UICollectionViewCell {
    
    var itemImageView: UIImageView!
    //var button: UIButton!
    var texto: UILabel!
    
    override func awakeFromNib() {
        //itemImageView = UIImageView(frame: contentView.frame)
        itemImageView = UIImageView(frame: CGRect(x : 0, y: 20, width: 100, height: 100))
        itemImageView.contentMode = .scaleAspectFit
        itemImageView.clipsToBounds = true
        //itemImageView.backgroundColor = UIColor.blue
        contentView.addSubview(itemImageView) //remember to ad elements to the content view, not the cell itself
        
        //button = UIButton(frame:CGRect(x: (contentView.frame.width-100)/2, y: (contentView.frame.height-50)/2, width: 100, height: 40))
        //button.backgroundColor = UIColor.green
        //button.setTitle("Change me", for: .normal)
        //button.layer.cornerRadius = 3
        //button.clipsToBounds = true
        //contentView.addSubview(button)
        
        texto = UILabel(frame:CGRect(x: 0, y: 120, width: 100, height: 20))
        //texto.text = "hi"
        //texto.backgroundColor = UIColor.yellow
        //texto.font = UIFont.systemFont(ofSize: 12)
        texto.font = UIFont(name: "Avenir", size: 12)
        texto.textAlignment = .center
        texto.adjustsFontSizeToFitWidth = true
        contentView.addSubview(texto)
    }
}
