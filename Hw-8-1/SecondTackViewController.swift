//
//  SecondTackViewController.swift
//  Hw 8-1
//
//  Created by 1 on 7.03.22.
//

import UIKit

class SecondTackViewController: UIViewController {
    
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - viewWillLoad
    
    override func viewWillAppear(_ animated: Bool) {
    
        catToy.layer.cornerRadius = 25
        catToy.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        
        
        
    }
    //MARK: - IBAction
    @IBOutlet weak var catToy: UIView!

    @IBAction func Close(_ sender: Any) {
                navigationController?.popToRootViewController(animated: true)
            }
    
    @IBAction func swipe(_ sender: UISwipeGestureRecognizer) {
        
            switch sender.direction {
            case .down:
                catToy.frame.origin.y += 20
            case .up:
                catToy.frame.origin.y -= 20
            case .right:
                catToy.frame.origin.x += 20
            case .left:
                catToy.frame.origin.x -= 20
                default:
                break
            }
          
        }

    
}
