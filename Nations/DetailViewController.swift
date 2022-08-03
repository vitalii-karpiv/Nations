//
//  ViewController.swift
//  Nations
//
//  Created by newbie on 02.08.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    
    var country: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: country)
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.gray.cgColor
        countryLabel.text = country.uppercased()
    }


}

