//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Felipe Augusto Correia on 20/08/22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedCharacter: SouthPark?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedCharacter?.name
        imageView.image = selectedCharacter?.image
    }

}
