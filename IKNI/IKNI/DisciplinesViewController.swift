//
//  DisciplinesViewController.swift
//  IKNI
//
//  Created by ALFA on 3/27/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit


struct cellData{
    let left : String!
    let moreLeft: String!
    let center : String!
    let right : String!
    
}

class TableViewController: UITableViewController {

    
    var arrayOfCellData = [cellData]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Disciplines"
        
        arrayOfCellData = [cellData(left : "1", moreLeft: "1" ,center : "Discrete Maths", right : "Serdyuk P."),
                           cellData(left : "1", moreLeft: "1",center : "Programming fundamentals", right : "Makar V."),
                           cellData(left : "1", moreLeft: "2",center : "Fundaments of Software", right : "Levus E."),
                           cellData(left : "1", moreLeft: "2",center : "Group dynamic and commun.", right : "Melnyk N."),
                           cellData(left : "1", moreLeft: "2",center : "Object Oriented Programming", right : "Korotyeva T."),
                           cellData(left : "2", moreLeft: "1",center : "Algorithms and Data Structure", right : "Korotyeva T."),
                           cellData(left : "2", moreLeft: "1",center : "Computer Architecture", right : "Fedasyuk P."),
                           cellData(left : "2", moreLeft: "1",center : "Operating Systems", right : "Yakovina V."),
                           cellData(left : "2", moreLeft: "2",center : "Discrete Structure", right : "Gavrish V."),
                           cellData(left : "2", moreLeft: "2",center : "Human-COmputer interaction", right : "Pavich N."),
                           cellData(left : "2", moreLeft: "2",center : "Networks Organization", right : "Tushnitskyi R."),
                           cellData(left : "2", moreLeft: "2",center : "Programming web Applications", right : "Melnyk R."),
                           cellData(left : "2", moreLeft: "2",center : "Project Management", right : "Skrypnik A."),
                           cellData(left : "2", moreLeft: "2",center : "Numerical Methods", right : "Melnyk N."),
                           cellData(left : "2", moreLeft: "1",center : "Software requirements analysis", right : "Bilas O."),
                           cellData(left : "3", moreLeft: "1",center : "Data Base", right : "Pavich N."),
                           cellData(left : "3", moreLeft: "1",center : "Computher graphics", right : "Levus E."),
                           cellData(left : "3", moreLeft: "1",center : "Software Development", right : "Serdyuk P."),
                           cellData(left : "3", moreLeft: "1",center : "Software Modeling", right : "Serdyuk P."),
                           cellData(left : "3", moreLeft: "1",center : "Internet Programming", right : "Melnyk P."),
                           cellData(left : "3", moreLeft: "1",center : "Operations Research", right : "Zhuravchak L."),
                           cellData(left : "3", moreLeft: "1",center : "Emphiric methods", right : "Gavrish."),
                           cellData(left : "3", moreLeft: "2",center : "Programming tools of Computer Graphics", right : "Zhuravchak L."),
                           cellData(left : "3", moreLeft: "2",center : "Multimedia systems", right : "Levchenko O."),
                           cellData(left : "3", moreLeft: "2",center : "System administration", right : "Yakovina V."),
                           cellData(left : "3", moreLeft: "2",center : "Artificial Intelligence", right : "Fedorchuk E."),
                           cellData(left : "4", moreLeft: "1",center : "Software architecture", right : "Petrov D."),
                           cellData(left : "4", moreLeft: "1",center : "Declarative Programming", right : "Levus E.."),
                           cellData(left : "4", moreLeft: "1",center : "Security apps and data", right : "Seniv E."),
                           cellData(left : "4", moreLeft: "1",center : "Software Management", right : "Skrypnik O."),
                           cellData(left : "4", moreLeft: "1",center : "Optimizing decision-making", right : "Fedorchuk E."),
                           cellData(left : "4", moreLeft: "1",center : "Command Software Development", right : "Makar V."),
                           cellData(left : "4", moreLeft: "1",center : "Software Quality and Testing", right : "Bilas O."),
                           cellData(left : "4", moreLeft: "2",center : "Mobile Programming", right : "Kutelmah R."),
                           cellData(left : "4", moreLeft: "2",center : "Professional experience in Software", right : "Korotyeva T.")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
        
        cell.leftLabelView.text = arrayOfCellData[indexPath.row].left
        cell.moreLeftLabelView.text = arrayOfCellData[indexPath.row].moreLeft
        cell.centerLabelView.text = arrayOfCellData[indexPath.row].center
        cell.rightLabelView.text = arrayOfCellData[indexPath.row].right
        
        return cell
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
