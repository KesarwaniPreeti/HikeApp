//
//  ViewController.swift
//  HikeUIkIt
//
//  Created by Preeti Kesarwani on 7/14/23.
//

import UIKit

class ViewController: UIViewController {
    
   // let image = UIImage(imageLiteralResourceName: "")
    @IBOutlet weak var imageChange: UIImageView!
    
    @IBOutlet weak var vc: UIView!
    
    @IBOutlet weak var backGroundVC: UIImageView!
    
    
    let imgArrary = [#imageLiteral(resourceName: "image-3"),
                     #imageLiteral(resourceName: "image-1"),
                     #imageLiteral(resourceName: "image-1"),
                     #imageLiteral(resourceName: "image-5"),
                     #imageLiteral(resourceName: "image-4")
 ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        vc.layer.cornerRadius = 30
        imageChange.stopAnimating()
        
    }
    
    
    @IBAction func hikeButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToWebPage", sender: self)
    }
    
    @IBAction func exploreButton(_ sender: UIButton) {
    

        imageChange.image = imgArrary[Int.random(in: 1...5)]
       imageChange.animationImages = imgArrary
       
        imageChange.animationDuration = 5
    
 imageChange.startAnimating()
        

       
       
    }
    
}

