//
//  ChatListProfileView.swift
//  rolo
//
//  Created by Cynthia Chen on 2020/5/26.
//  Copyright © 2020 Cynthia Chen. All rights reserved.
//

import UIKit
import SDWebImage

class ChatListProfileView: UIView {
    var users: [ChatUser]? {
        didSet {
            guard let users = users else {
                return
            }
            setupImages(users: users)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    private func setupImages(users: [ChatUser]) {
        let count = users.count
        if count == 1 {
            let img = ChatListProfileImageView()
            img.sd_setImage(with: URL(string: users[0].profileImage ?? ""),
                            placeholderImage: imageWith(name: users[0].name ?? ""),
                            completed: nil)
            addSubview(img)
            img.snp.makeConstraints { (m) in
                m.edges.equalToSuperview()
            }
        } else if count == 2 {
            let img = ChatListProfileImageView()
            img.sd_setImage(with: URL(string: users[0].profileImage ?? ""),
                            placeholderImage: imageWith(name: users[0].name ?? ""),
                            completed: nil)
            addSubview(img)
            img.snp.makeConstraints { (m) in
                m.top.left.equalToSuperview()
                m.width.height.equalToSuperview().multipliedBy(0.7)
            }
            let img2 = ChatListProfileImageView()
            img2.sd_setImage(with: URL(string: users[1].profileImage ?? ""),
                             placeholderImage: imageWith(name: users[1].name ?? ""),
                             completed: nil)
            addSubview(img2)
            img2.snp.makeConstraints { (m) in
                m.right.bottom.equalToSuperview()
                m.width.height.equalToSuperview().multipliedBy(0.7)
            }
        } else if count == 3 {
            let img = ChatListProfileImageView()
            img.sd_setImage(with: URL(string: users[0].profileImage ?? ""),
                            placeholderImage: imageWith(name: users[0].name ?? ""),
                            completed: nil)
            addSubview(img)
            img.snp.makeConstraints { (m) in
                m.top.left.equalToSuperview()
                m.width.height.equalToSuperview().multipliedBy(0.6)
            }
            let img2 = ChatListProfileImageView()
            img2.sd_setImage(with: URL(string: users[1].profileImage ?? ""),
                             placeholderImage: imageWith(name: users[1].name ?? ""),
                             completed: nil)
            addSubview(img2)
            img2.snp.makeConstraints { (m) in
                m.width.height.equalToSuperview().multipliedBy(0.6)
                m.center.equalToSuperview()
            }
            let img3 = ChatListProfileImageView()
            img3.sd_setImage(with: URL(string: users[2].profileImage ?? ""),
                             placeholderImage: imageWith(name: users[2].name ?? ""),
                             completed: nil)
            addSubview(img3)
            img3.snp.makeConstraints { (m) in
                m.right.bottom.equalToSuperview()
                m.width.height.equalToSuperview().multipliedBy(0.6)
            }
        } else if count >= 4 {
            let img = ChatListProfileImageView()
            img.sd_setImage(with: URL(string: users[0].profileImage ?? ""),
                            placeholderImage: imageWith(name: users[0].name ?? ""),
                            completed: nil)
            addSubview(img)
            img.snp.makeConstraints { (m) in
                m.top.left.equalToSuperview()
                m.width.height.equalToSuperview().multipliedBy(0.51)
            }
            img.layer.maskedCorners = [.layerMinXMinYCorner]

            let img2 = ChatListProfileImageView()
            img2.sd_setImage(with: URL(string: users[1].profileImage ?? ""),
                             placeholderImage: imageWith(name: users[1].name ?? ""),
                             completed: nil)
            addSubview(img2)
            img2.snp.makeConstraints { (m) in
                m.width.height.equalToSuperview().multipliedBy(0.51)
                m.top.right.equalToSuperview()
            }
            img2.layer.maskedCorners = [.layerMaxXMinYCorner]

            let img3 = ChatListProfileImageView()
            img3.sd_setImage(with: URL(string: users[2].profileImage ?? ""),
                             placeholderImage: imageWith(name: users[2].name ?? ""),
                             completed: nil)
            addSubview(img3)
            img3.snp.makeConstraints { (m) in
                m.left.bottom.equalToSuperview()
                m.width.height.equalToSuperview().multipliedBy(0.51)
            }
            img3.layer.maskedCorners = [.layerMinXMaxYCorner]

            let img4 = ChatListProfileImageView()
            img4.sd_setImage(with: URL(string: users[3].profileImage ?? ""),
                             placeholderImage: imageWith(name: users[3].name ?? ""),
                             completed: nil)
            addSubview(img4)
            img4.snp.makeConstraints { (m) in
                m.right.bottom.equalToSuperview()
                m.width.height.equalToSuperview().multipliedBy(0.51)
            }
            img4.layer.maskedCorners = [.layerMaxXMaxYCorner]
        }
    }
    
    private func imageWith(name: String?) -> UIImage? {
        guard let first = name?.prefix(1) else {
            return nil
        }
        let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        let nameLabel = UILabel(frame: frame)
        nameLabel.textAlignment = .center
        nameLabel.backgroundColor = .lightGray
        nameLabel.textColor = .white
        nameLabel.font = UIFont.systemFont(ofSize: 30)
        nameLabel.text = String(first)
        defer {
            UIGraphicsEndImageContext()
        }
        UIGraphicsBeginImageContext(frame.size)
        if let currentContext = UIGraphicsGetCurrentContext() {
            nameLabel.layer.render(in: currentContext)
            let nameImage = UIGraphicsGetImageFromCurrentImageContext()
            return nameImage
        }
        return nil
    }
}
