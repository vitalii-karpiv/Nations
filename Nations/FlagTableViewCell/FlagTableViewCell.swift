//
//  FlagTableViewCell.swift
//  Nations
//
//  Created by newbie on 02.08.2022.
//

import UIKit

class FlagTableViewCell: UITableViewCell {
    
    static let identifier = "FlagTableViewCell"
    @IBOutlet weak var flagImage: UIImageView!
    @IBOutlet weak var flagLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: FlagTableViewCell.identifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure(with country: String) {
        flagLabel.text = country
        flagImage.image = UIImage(named: country)
    }
}
