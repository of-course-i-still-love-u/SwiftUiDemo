//
//  Data.swift
//  TheFirst
//
//  Created by PongsathornL on 12/1/2565 BE.
//

import SwiftUI

struct Item: Identifiable {
  var id = UUID()
  var title: String
  var text: String
  var image: String
 var gradient:LinearGradient
}

var items = [
  Item(
    title: "Set up your wallet",
    text:"Once you’ve set up your wallet of choice, connect it to OpenSea by clicking the wallet icon in the top right corner. Learn about the",
    image: "sleet", gradient: LinearGradient(
        gradient: Gradient(stops: [
    .init(color: Color(#colorLiteral(red: 0.8823529481887817, green: 0.9333333373069763, blue: 0.7647058963775635, alpha: 1)), location: 0),
    .init(color: Color(#colorLiteral(red: 0.250980406999588, green: 0.8784313797950745, blue: 0.8156862854957581, alpha: 1)), location: 1),
    .init(color: Color(#colorLiteral(red: 1, green: 0.5490196347236633, blue: 0, alpha: 1)), location: 1)]),
        startPoint: UnitPoint(x: 0.8799999621639236, y: 0.10999996315336436),
        endPoint: UnitPoint(x: 0.04999997969675052, y: 0.9400000014643679))),
  Item(
    title: "Create your collection",
    text:
      "Click My Collections and set up your collection. Add social links, a description, profile & banner images, and set a secondary sales fee.",
    image: "sunny", gradient: LinearGradient(
        gradient: Gradient(stops: [
    .init(color: Color(#colorLiteral(red: 1, green: 0, blue: 0.501960813999176, alpha: 1)), location: 0),
    .init(color: Color(#colorLiteral(red: 0.250980406999588, green: 0.8784313797950745, blue: 0.8156862854957581, alpha: 1)), location: 1),
    .init(color: Color(#colorLiteral(red: 1, green: 0.5490196347236633, blue: 0, alpha: 1)), location: 1)]),
        startPoint: UnitPoint(x: 0.8799999621639236, y: 0.10999996315336436),
        endPoint: UnitPoint(x: 0.04999997969675052, y: 0.9400000014643679))),
  Item(
    title: "Add your NFTs",
    text:
      "Upload your work (image, video, audio, or 3D art), add a title and description, and customize your NFTs with properties, stats, and unlockable content.",
    image: "thunderstroms-sunny", gradient: LinearGradient(
        gradient: Gradient(stops: [
    .init(color: Color(#colorLiteral(red: 0.43529412150382996, green: 0, blue: 0, alpha: 1)), location: 0),
    .init(color: Color(#colorLiteral(red: 0.125490203499794, green: 0.003921568859368563, blue: 0.13333334028720856, alpha: 1)), location: 1),
    .init(color: Color(#colorLiteral(red: 0.250980406999588, green: 0.8784313797950745, blue: 0.8156862854957581, alpha: 1)), location: 1)]),
        startPoint: UnitPoint(x: 0.8799999621639236, y: 0.10999996315336436),
        endPoint: UnitPoint(x: 0.04999997969675052, y: 0.9400000014643679))),
  Item(
    title: "List them for sale",
    text:
      "Choose between auctions, fixed-price listings, and declining-price listings. You choose how you want to sell your NFTs, and we help you sell them!",
    image: "windy", gradient: LinearGradient(
        gradient: Gradient(stops: [
    .init(color: Color(#colorLiteral(red: 0.09803921729326248, green: 0.3294117748737335, blue: 0.48235294222831726, alpha: 1)), location: 0),
    .init(color: Color(#colorLiteral(red: 0.250980406999588, green: 0.8784313797950745, blue: 0.8156862854957581, alpha: 1)), location: 1),
    .init(color: Color(#colorLiteral(red: 1, green: 0.8470588326454163, blue: 0.6078431606292725, alpha: 1)), location: 1)]),
        startPoint: UnitPoint(x: 0.8799999621639236, y: 0.10999996315336436),
        endPoint: UnitPoint(x: 0.04999997969675052, y: 0.9400000014643679))),
]
