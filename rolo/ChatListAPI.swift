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
            ChatList(title: "one person", users: [ChatUser(profileImage: "", name: "David")]),
            ChatList(title: "two people", users: [ChatUser(profileImage: "", name: "David"),
                                                  ChatUser(profileImage: "", name: "Anggie")]),
            ChatList(title: "three people", users: [ChatUser(profileImage: "", name: "David"),
                                                    ChatUser(profileImage: "", name: "Anggie"),
                                                    ChatUser(profileImage: "", name: "Jason")]),
            ChatList(title: "four people", users: [ChatUser(profileImage: "", name: "David"),
                                                   ChatUser(profileImage: "", name: "Anggie"),
                                                   ChatUser(profileImage: "", name: "Jason"),
                                                   ChatUser(profileImage: "", name: "Jeff")]),
            ChatList(title: "five people", users: [ChatUser(profileImage: "", name: "David"),
                                                   ChatUser(profileImage: "", name: "Anggie"),
                                                   ChatUser(profileImage: "", name: "Jason"),
                                                   ChatUser(profileImage: "", name: "Jeff"),
                                                   ChatUser(profileImage: "", name: "Abby")]),
        ]
        return chatlists
    }
}
