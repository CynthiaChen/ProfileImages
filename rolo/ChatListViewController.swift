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
        view.addSubview(chatListTableView)
        chatListTableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        chatListTableView.dataSource = self
        chatListTableView.register(UITableViewCell.self, forCellReuseIdentifier: "chatListCell")

        // Do any additional setup after loading the view.
    }
    private let contacts = ChatLsitAPI.getChatLists() // model
}

extension ChatListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatListCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].title
        return cell
    }
}
