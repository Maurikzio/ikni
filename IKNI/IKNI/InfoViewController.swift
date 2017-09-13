//
//  InfoViewController.swift
//  IKNI
//
//  Created by ALFA on 3/27/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var vistaWeb: UIWebView!
    
    var nombrePdf:String = "infoIKNI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Information"
        mostrarPDF()
        
        habilitarZoom()
    }
    
    func habilitarZoom()
    {
        vistaWeb.scalesPageToFit = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mostrarPDF(){
        //1.-direccion del archivo pdf
        let direccionPdf = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePdf, ofType: "pdf", inDirectory: "SELF")!)
        
        //2.- transformar archivo pdf a data
        let datosPdf = try? Data(contentsOf: direccionPdf)
        
        //3.-mostrar datos en el web view
        vistaWeb.load(datosPdf!, mimeType: "application/pdf", textEncodingName: "utf-8", baseURL: direccionPdf)
        
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
