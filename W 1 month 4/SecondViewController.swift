//
//  SecondViewController.swift
//  W 1 month 4
//
//  Created by Рауль on 8/4/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    static let reuiID = String(describing: SecondViewController.self)
    @IBOutlet weak var titleLAbel: UILabel!
    @IBOutlet weak var descriptionLAbel: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
    
    var name = ""
    var info = ""
    var imageDetails = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLAbel.text = name
        descriptionLAbel.text = info
        imageDetail.image = UIImage(named: imageDetails)

    }

}
