//
//  ChatListTableViewCell.swift
//  rolo
//
//  Created by Cynthia Chen on 2020/5/25.
//  Copyright © 2020 Cynthia Chen. All rights reserved.
//

import UIKit

class ChatListTableViewCell: UITableViewCell {
    var titleLabel = UILabel()
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
    let profileView = ChatListProfileView()
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(containerView)
        containerView.snp.makeConstraints { (m) in
            m.edges.equalToSuperview()
        }
        containerView.addSubview(profileView)
        profileView.snp.makeConstraints { (m) in
            m.width.height.equalTo(70)
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
}
