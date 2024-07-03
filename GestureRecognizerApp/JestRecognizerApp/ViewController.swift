//
//  ViewController.swift
//  JestRecognizerApp
//
//  Created by Mert Erciyes Çağan on 5/28/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var isIcardi = true
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    
    @objc func changePic(){
        if isIcardi == true {
            nameLabel.text = "Erciyes"
            imageView.image = UIImage(named: "ercu")
            isIcardi = false
        } else {
            nameLabel.text = "Icardi"
            imageView.image = UIImage(named: "icardi")
            isIcardi = true
        }
    }

}

