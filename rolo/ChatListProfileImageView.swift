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
        self.layer.cornerRadius = 10
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1.5
        self.clipsToBounds = true
    }
}
