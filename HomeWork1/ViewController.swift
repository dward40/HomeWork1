//
//  ViewController.swift
//  HomeWork1
//
//  Created by Эдуард Нагучев on 28.04.2020.
//  Copyright © 2020 Эдуард Нагучев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrentLight {
        case red
        case yellow
        case green
    }
   
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    let lightOff: CGFloat = 0.2
    let lightOn: CGFloat = 1
    var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Add start value for view`s alpha
        
        view1.alpha = lightOff
        view2.alpha = lightOff
        view3.alpha = lightOff
        
        // Sets the fillet radius of the View.
        
        view1.layer.cornerRadius = view1.frame.height / 2
        view2.layer.cornerRadius = view2.frame.height / 2
        view3.layer.cornerRadius = view3.frame.height / 2
  
    }
    
    @IBAction func button(_ sender: Any) {
        
        button.setTitle("NEXT", for: .normal)
    
        switch currentLight {
        case .red:
            view1.alpha = lightOn
            view3.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            view2.alpha = lightOn
            view1.alpha = lightOff
            currentLight = .green
        case .green:
            view2.alpha = lightOff
            view3.alpha = lightOn
            currentLight = .red
        
        }
               
 
            
        }
    
        
        
     
        
    }


