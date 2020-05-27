//
//  ChatListProfileImageView.swift
//  rolo
//
//  Created by Cynthia Chen on 2020/5/26.
//  Copyright © 2020 Cynthia Chen. All rights reserved.
//

import UIKit

class ChatListProfileImageView: UIImageView {
    override func layoutSubviews() {
        super.layoutSubviews()
        self.contentMode = .scaleAspectFill
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 8
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 2
        self.clipsToBounds = true
        
        //clean up border line
        let path = UIBezierPath(roundedRect: self.bounds.insetBy(dx: 0.1, dy: 0.1), cornerRadius: 8.0)
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask        
    }
}
