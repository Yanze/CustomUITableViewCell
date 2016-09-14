//
//  PhotoTableViewCell.swift
//  TableViews
//
//  Created by yanze on 9/13/16.
//  Copyright © 2016 yanzeliu. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bigImageView: UIImageView!
    @IBOutlet weak var smallImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var gradientView: UIView!
    
    var photo: Photo! {
        didSet {
            self.updateUI()
            self.circleSmallImageView()
            self.transparentCaptionUIView()
        }
    }
    
    private func updateUI() {
        self.bigImageView.image = UIImage(named: photo.name)
        self.smallImageView.image = UIImage(named: photo.photoProfileImageName)
        self.captionLabel.text = photo.caption
    }
    
    private func circleSmallImageView() {
        self.smallImageView.layer.cornerRadius = self.smallImageView.frame.size.width / 2
        self.smallImageView.clipsToBounds = true
        
        self.smallImageView.layer.borderWidth = 1.5
        self.smallImageView.layer.borderColor = UIColor.whiteColor().CGColor
    }
    
    private func transparentCaptionUIView() {
        self.gradientView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        self.captionLabel.textColor = UIColor.whiteColor()

    }
}
