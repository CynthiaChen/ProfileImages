//
//  ChatListAPI.swift
//  rolo
//
//  Created by Cynthia Chen on 2020/5/25.
//  Copyright © 2020 Cynthia Chen. All rights reserved.
//
class ChatLsitAPI {
    //Fake chat users data, randomly picked from http://www.nretnil.com/avatar
    static func getChatLists() -> [ChatList] {
        let chatlists = [
            ChatList(title: "one person", users: [
                ChatUser(profileImage: "http://www.nretnil.com/avatar/kirk2.jpg", name: "David")]),
            ChatList(title: "two people", users: [
                ChatUser(profileImage: "http://www.nretnil.com/avatar/kirk2.jpg", name: "David"),
                ChatUser(profileImage: "http://www.nretnil.com/avatar/cry-1.jpg", name: "Anggie")]),
            ChatList(title: "three people", users: [
                ChatUser(profileImage: "http://www.nretnil.com/avatar/kirk2.jpg", name: "David"),
                ChatUser(profileImage: "http://www.nretnil.com/avatar/cry-1.jpg", name: "Anggie"),
                ChatUser(profileImage: "http://www.nretnil.com/avatar/kirk.jpg", name: "Jason")]),
            ChatList(title: "four people", users: [
                ChatUser(profileImage: "http://www.nretnil.com/avatar/kirk2.jpg", name: "David"),
                ChatUser(profileImage: "http://www.nretnil.com/avatar/cry-1.jpg", name: "Anggie"),
                ChatUser(profileImage: "http://www.nretnil.com/avatar/kirk.jpg", name: "Jason"),
                ChatUser(profileImage: "http://www.nretnil.com/avatar/mark_headshot_wbg.jpg", name: "Jeff")]),
            ChatList(title: "five people", users: [
                ChatUser(profileImage: "http://www.nretnil.com/avatar/kirk2.jpg", name: "David"),
                ChatUser(profileImage: "http://www.nretnil.com/avatar/mac01.png", name: "Abby"),
                ChatUser(profileImage: "http://www.nretnil.com/avatar/cry-1.jpg", name: "Anggie"),
                ChatUser(profileImage: "http://www.nretnil.com/avatar/kirk.jpg", name: "Jason"),
                ChatUser(profileImage: "http://www.nretnil.com/avatar/mark_headshot_wbg.jpg", name: "Jeff")]),
            ChatList(title: "one person", users: [
                ChatUser(profileImage: "http://www.nretnil.com/avatar/mac01.png", name: "Abby")]),
        ]
        return chatlists
    }
}
