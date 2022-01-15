//
//  File.swift
//  Ps5Concept
//
//  Created by PongsathornL on 13/1/2565 BE.
//

import SwiftUI

struct Item: Identifiable {
  var id = UUID()
  var icon: String
  var text: String
  var image: String

}

var items = [
  Item(icon: "Microphone", text: "Built-In Microphone", image: "Block1"),
  Item(icon: "HeadsetJack", text: "Headset Jack", image: "Block2"),
  Item(icon: "Vector", text: "Motion Sensor", image: "Block3"),
]

enum PSTab: String {
  case Ps5_DE
  case Ps5
  case Headset
  case Controller

}
struct PSItem: Identifiable {
  var id = UUID()
  var tab: PSTab
  var title: String
  var text: String
  var image: String

}
struct LikeItem: Identifiable {
  var id = UUID()
  var like: Bool

}


var PSItems = [
  PSItem(
    tab: .Ps5_DE, title: "Game console", text: "Playstation 5\nDigital Edition", image: "Ps5_DE"),
  PSItem(tab: .Ps5, title: "Game console", text: "Playstation 5", image: "Ps5"),
  PSItem(
    tab: .Controller, title: "Gaming Controller", text: "DualSense\nWireless\nController",
    image: "Controller"),
  PSItem(
    tab: .Headset, title: "Audio and Communication", text: "Wireless\nHeadset", image: "Headset"),
]

struct TabItem: Identifiable {
  var id = UUID()
  var tab: Tab
  var icon: String

}

enum Tab: String {
  case home
  case search
  case profile
  case cart

}

var tabItems = [
  TabItem(tab: .home, icon: "logo.playstation"),
  TabItem(tab: .search, icon: "circle.circle"),
  TabItem(tab: .profile, icon: "square.circle"),
  TabItem(tab: .cart, icon: "triangle.circle"),
]
