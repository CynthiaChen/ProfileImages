//
//  ChatListViewController.swift
//  rolo
//
//  Created by Cynthia Chen on 2020/5/25.
//  Copyright © 2020 Cynthia Chen. All rights reserved.
//

import UIKit
import SnapKit

class ChatListViewController: UIViewController {
    let chatListTableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(chatListTableView)
        chatListTableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        chatListTableView.dataSource = self
        chatListTableView.delegate = self
        chatListTableView.register(ChatListTableViewCell.self, forCellReuseIdentifier: "chatListCell")

        // Do any additional setup after loading the view.
    }
    private let chatlists = ChatLsitAPI.getChatLists() // model
}

extension ChatListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatlists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatListCell", for: indexPath) as! ChatListTableViewCell
        cell.chatList? = chatlists[indexPath.row]
        return cell
    }
}

extension ChatListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
