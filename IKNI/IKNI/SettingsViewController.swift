//
//  SettingsViewController.swift
//  IKNI
//
//  Created by ALFA on 3/27/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var color1: UIButton!
    @IBOutlet weak var color2: UIButton!
    @IBOutlet weak var color3: UIButton!
    
    
    @IBOutlet weak var color1Back: UIButton!
    @IBOutlet weak var color2Back: UIButton!
    @IBOutlet weak var color3Back: UIButton!
    
    
    @IBOutlet weak var eng: UIButton!
    @IBOutlet weak var esp: UIButton!
    @IBOutlet weak var ukr: UIButton!
    
    
    //cambiar el color de la aplicacion a Orange
    @IBAction func toOrange(_ sender: Any) {
        
        let alerta = UIAlertController(title: "App color changed to:", message: "Orange!", preferredStyle: UIAlertControllerStyle.alert)
        alerta.addAction(UIAlertAction(title: "OK!", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alerta, animated: true, completion: nil)
        
        color1Back.backgroundColor = UIColor.clear
        color1Back.layer.cornerRadius = 18
        color1Back.layer.borderWidth = 1
        color1Back.layer.borderColor = UIColor.clear.cgColor
        
        color2Back.backgroundColor = UIColor.clear
        color2Back.layer.cornerRadius = 18
        color2Back.layer.borderWidth = 1
        color2Back.layer.borderColor = UIColor.black.cgColor
        
        color3Back.backgroundColor = UIColor.clear
        color3Back.layer.cornerRadius = 18
        color3Back.layer.borderWidth = 1
        color3Back.layer.borderColor = UIColor.clear.cgColor
        
        navigationController?.navigationBar.barTintColor = UIColor.orange
    }
    
    //cambiar el color de la plicacion a Magenta
    @IBAction func toMagenta(_ sender: Any) {
        
        let alerta = UIAlertController(title: "App color changed to:", message: "Magenta!", preferredStyle: UIAlertControllerStyle.alert)
        alerta.addAction(UIAlertAction(title: "OK!", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alerta, animated: true, completion: nil)
        
        color1Back.backgroundColor = UIColor.clear
        color1Back.layer.cornerRadius = 18
        color1Back.layer.borderWidth = 1
        color1Back.layer.borderColor = UIColor.clear.cgColor
        
        color2Back.backgroundColor = UIColor.clear
        color2Back.layer.cornerRadius = 18
        color2Back.layer.borderWidth = 1
        color2Back.layer.borderColor = UIColor.clear.cgColor
        
        color3Back.backgroundColor = UIColor.clear
        color3Back.layer.cornerRadius = 18
        color3Back.layer.borderWidth = 1
        color3Back.layer.borderColor = UIColor.black.cgColor
        
        navigationController?.navigationBar.barTintColor = UIColor.magenta
    }

    //cambiar el color de la aplicacion a Green, default
    @IBAction func toGreen(_ sender: Any) {
        let verde = UIColor(rgb: 0x277554)
        
        let alerta = UIAlertController(title: "App color changed to:", message: "Green!", preferredStyle: UIAlertControllerStyle.alert)
        alerta.addAction(UIAlertAction(title: "OK!", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alerta, animated: true, completion: nil)
        
        color1Back.backgroundColor = UIColor.clear
        color1Back.layer.cornerRadius = 18
        color1Back.layer.borderWidth = 1
        color1Back.layer.borderColor = UIColor.black.cgColor
        
        color2Back.backgroundColor = UIColor.clear
        color2Back.layer.cornerRadius = 18
        color2Back.layer.borderWidth = 1
        color2Back.layer.borderColor = UIColor.clear.cgColor
        
        color3Back.backgroundColor = UIColor.clear
        color3Back.layer.cornerRadius = 18
        color3Back.layer.borderWidth = 1
        color3Back.layer.borderColor = UIColor.clear.cgColor
        
        navigationController?.navigationBar.barTintColor = verde
    }
    
    
   
    @IBAction func selectEng(_ sender: UIButton) {
        esp.layer.borderWidth = 0
        ukr.layer.borderWidth = 0
        
        let alerta = UIAlertController(title: "English language", message: "Default language selected!", preferredStyle: UIAlertControllerStyle.alert)
        alerta.addAction(UIAlertAction(title: "OK!", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alerta, animated: true, completion: nil)
        
        eng.backgroundColor = UIColor.yellow
    }
    
    @IBAction func selectEsp(_ sender: UIButton) {
        let alerta = UIAlertController(title: "Idioma Español", message: "Disponible en la siguiente version", preferredStyle: UIAlertControllerStyle.alert)
        alerta.addAction(UIAlertAction(title: "Si!", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alerta, animated: true, completion: nil)

    }
    
    @IBAction func selectUkr(_ sender: UIButton) {
        let alerta = UIAlertController(title: "Українська мова", message: "Доступна в наступній версії!", preferredStyle: UIAlertControllerStyle.alert)
        alerta.addAction(UIAlertAction(title: "Так!", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alerta, animated: true, completion: nil)

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        navigationItem.title = "Settings"
        
        let color = UIColor(rgb: 0x277554)
        
        //paleta de colores
        color1.backgroundColor = color
        color1.layer.cornerRadius = 18
        
        color2.backgroundColor = UIColor.orange
        color2.layer.cornerRadius = 18
        
        color3.backgroundColor = UIColor.magenta
        color3.layer.cornerRadius = 18
        
        
        //fondo de la paleta de colores
        color1Back.backgroundColor = UIColor.clear
        color1Back.layer.cornerRadius = 18
        color1Back.layer.borderWidth = 1
        color1Back.layer.borderColor = UIColor.black.cgColor
        
        color2Back.backgroundColor = UIColor.clear
        color2Back.layer.cornerRadius = 18
        color2Back.layer.borderWidth = 1
        color2Back.layer.borderColor = UIColor.clear.cgColor
        
        color3Back.backgroundColor = UIColor.clear
        color3Back.layer.cornerRadius = 18
        color3Back.layer.borderWidth = 1
        color3Back.layer.borderColor = UIColor.clear.cgColor
        
        
        //idiomas seccion
        eng.backgroundColor = UIColor.clear
        eng.layer.cornerRadius = 5
        eng.layer.borderWidth = 1
        eng.layer.borderColor = UIColor.gray.cgColor
        
        esp.backgroundColor = UIColor.clear
        esp.layer.cornerRadius = 5
        esp.layer.borderWidth = 1
        esp.layer.borderColor = UIColor.gray.cgColor
        
        ukr.backgroundColor = UIColor.clear
        ukr.layer.cornerRadius = 5
        ukr.layer.borderWidth = 1
        ukr.layer.borderColor = UIColor.gray.cgColor
        
        
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

}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}





