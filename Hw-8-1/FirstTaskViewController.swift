//
//  FirstTaskViewController.swift
//  Hw 8-1
//
//  Created by 1 on 7.03.22.
//

import UIKit

class FirstTaskViewController: UIViewController {

    //MARK: - Properties
    
    var circles: [UIView] = []
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //MARK: - IBAction
    
    @IBAction func Close(_ sender: Any) {
            navigationController?.popToRootViewController(animated: true)
        }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        
        let location = sender.location(in: view)
       
        let circle = UIView()
        circle.backgroundColor = .green
        circle.frame = CGRect(x: location.x - 30, y: location.y - 30, width: 60, height: 60)
        circle.layer.cornerRadius = 30
        circle.layer.masksToBounds = true
        
        for element in 0..<circles.count {
            if circles[element].frame.contains(location){
                circles[element].removeFromSuperview()
                circles.remove(at: element)
                return
            }
        }
        
        circles.append(circle)
        
        view.addSubview(circle)
    }
}
       
    
