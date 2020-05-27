//
//  ChatListProfileImageView.swift
//  rolo
//
//  Created by Cynthia Chen on 2020/5/26.
//  Copyright © 2020 Cynthia Chen. All rights reserved.
//

import UIKit

class ChatListProfileImageView: UIImageView {
    self.contentMode = .scaleAspectFill
    self.translatesAutoresizingMaskIntoConstraints = false
    self.layer.cornerRadius = 5
    self.clipsToBounds = true
}
