//
//  TableViewCell.swift
//  W 1 month 4
//
//  Created by Рауль on 8/4/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    static let id = String(describing: TableViewCell.self)
    
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var labelDetail: UILabel!
    @IBOutlet weak var descrtptionLabel: UILabel!
    
    func display(item: Detail) {
        imageDetail.image = UIImage(named: item.image)
        labelDetail.text = item.title
        descrtptionLabel.text = item.description
    }
}
