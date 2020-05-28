//
//  ChatListTableViewCell.swift
//  rolo
//
//  Created by Cynthia Chen on 2020/5/25.
//  Copyright © 2020 Cynthia Chen. All rights reserved.
//

import UIKit

class ChatListTableViewCell: UITableViewCell {
    var chatList: ChatList? {
        didSet {
            guard let listItem = chatList else {
                return
            }
            if let title = listItem.title {
                titleLabel.text = title
            }
            if let users = listItem.users {
                profileView.users = users
            }
        }
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(containerView)
        containerView.backgroundColor = .white
        containerView.snp.makeConstraints { (m) in
            m.edges.equalToSuperview()
        }
        containerView.addSubview(profileView)
        profileView.backgroundColor = .white
        profileView.snp.makeConstraints { (m) in
            m.left.equalToSuperview().offset(4)
            m.width.height.equalTo(PROFILE_IMAGE_SIZE)
            m.centerY.equalToSuperview()
        }
        containerView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (m) in
            m.centerY.equalToSuperview()
            m.left.equalTo(profileView.snp.right).offset(10)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private var titleLabel = UILabel()
    private let profileView = ChatListProfileView()
    private let containerView = UIView()
    private let PROFILE_IMAGE_SIZE = 60 //The image profile size 
}
