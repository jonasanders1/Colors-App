//
//  ColorsTableVCViewController.swift
//  RandomColors
//
//  Created by Jonas Andersen on 18/08/2023.
//

import UIKit

class ColorsTableVCViewController: UIViewController  {
    
    var colors : [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        
        // Do any additional setup after loading the view.
    }
    
    func addRandomColors() {
        for _ in 0..<50 {
            // using our random color function from our extention
            colors.append(.random() )
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailsVC
        destVC.color = sender as? UIColor
    }
}
    
    extension ColorsTableVCViewController: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return colors.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // If we dont have a cell, run this little function -> creates an empty cell
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
                return UITableViewCell()
            }
            
            cell.backgroundColor = colors[indexPath.row]
            return cell
    
            
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let color = colors[indexPath.row]
            performSegue(withIdentifier: "ToColorsDetailsVC", sender: color)
        }
    }
   
    

   

