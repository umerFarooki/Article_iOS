//
//  ArticleTableViewCell.swift
//  ArticleBlog
//
//  Created by Umer Farooq on 3/1/21.
//  Copyright © 2021 Umer Farooq. All rights reserved.
//

import UIKit
import AlamofireImage

class ArticleTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var byLabel: UILabel!
    @IBOutlet weak var forwardImageViewLabel: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        articleImageView.addRoundedCorner(30)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setValues(imageURL: String, headline:String, byLabel: String) {
//        if let url = URL(string: imageURL) {
//            articleImageView.af.setImage(withURL: url)
//        }
//        headlineLabel.text = headline
//        self.byLabel.text = byLabel
        articleImageView.addRoundedCorner(30)
    }
    
}
