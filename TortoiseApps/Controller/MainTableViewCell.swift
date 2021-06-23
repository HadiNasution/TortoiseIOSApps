//
//  MainTableViewCell.swift
//  TortoiseApps
//
//  Created by Hadi Nasution on 21/06/21.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var imgItem: UIImageView!
    @IBOutlet weak var descItem: UILabel!
    @IBOutlet weak var titleItem: UILabel!
    @IBOutlet weak var viewItem: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
