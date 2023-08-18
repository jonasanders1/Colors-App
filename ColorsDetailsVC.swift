//
//  ColorsDetailsVC.swift
//  RandomColors
//
//  Created by Jonas Andersen on 18/08/2023.
//

import UIKit

class ColorsDetailsVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // If we for some reason dont get the color value, just set the color to blue
        view.backgroundColor = color ?? .blue

    }
    
}
