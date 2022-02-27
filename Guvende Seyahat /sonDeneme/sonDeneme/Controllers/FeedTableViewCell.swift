//
//  FeedTableViewCell.swift
//  sonDeneme
//
//  Created by Yusuf Muhammet Yıldırım on 20/01/2022.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var btnStar: UIButton!
    @IBOutlet weak var btnComment: UIButton!
    @IBOutlet weak var btnDelete: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
