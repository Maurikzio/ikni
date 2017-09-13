//
//  InfoDepartmentsViewController.swift
//  IKNI
//
//  Created by ALFA on 3/29/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class InfoDepartmentsViewController: UIViewController {

    //departments
    @IBOutlet var vistaWeb: UIWebView!
    
    var nombrePdfRecibido: String?
    
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    func start(){
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        activityIndicator.startAnimating()
        view.addSubview(activityIndicator)
        print("cargando..")
    }
    
    func stop(){
     activityIndicator.stopAnimating()
        print("mostrando pdf")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //start()
        
        //print(nombrePdfRecibido!)
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
       let direccionPdf = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePdfRecibido!, ofType: "pdf", inDirectory: "PDF")!)
        
        //2.- transformar archivo pdf a data
        let datosPdf = try? Data(contentsOf: direccionPdf)
        //stop()
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
