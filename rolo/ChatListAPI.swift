//
//  ChatListAPI.swift
//  rolo
//
//  Created by Cynthia Chen on 2020/5/25.
//  Copyright © 2020 Cynthia Chen. All rights reserved.
//
class ChatLsitAPI {
    static func getChatLists() -> [ChatList] {
        let chatlists = [
            ChatList(profileImage: "", title: "one person"),
            ChatList(profileImage: "", title: "two people"),
            ChatList(profileImage: "", title: "three people"),
            ChatList(profileImage: "", title: "four people"),
            ChatList(profileImage: "", title: "five people")
        ]
        return chatlists
    }
}
