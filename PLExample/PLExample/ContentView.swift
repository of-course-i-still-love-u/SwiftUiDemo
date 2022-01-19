//
//  ContentView.swift
//  PLExample
//
//  Created by PongsathornL on 18/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
  @State var input = ""
  @State var output = ""

  func calFloat(fInput: Float) -> String {
    var answer = ""
    let remainder = fInput.truncatingRemainder(dividingBy: 1)

    if remainder < 0.5 {
      print("< 0.5")
      answer = String(Int(fInput))

    } else {
      print("> 0.5")
      let result = String(Int(fInput))
      answer = "\(result).5"
    }

    return answer
  }

  var body: some View {

    VStack(spacing: 16) {
      Text(output == "" ? "Hello ~" : output)
        .font(.system(size: 70))
        .foregroundColor(.white)
        .padding(.bottom, 100)

      TextField("Please enter", text: $input)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .keyboardType(.decimalPad)
        .padding()

      Button {
        let inputToFloat = Float(input)
        output = calFloat(fInput: inputToFloat ?? 0)
        print("output : \(output)")

      } label: {
        Text("Let's go")
          .font(.body)
          .bold()
          .foregroundColor(.white)
          .padding()
          .padding(.horizontal, 50)
      }
      .background(
        .ultraThinMaterial,
        in: RoundedRectangle(cornerRadius: .infinity)
      )
      .overlay(
        Capsule().stroke(
          LinearGradient(
            gradient: Gradient(stops: [
              .init(
                color: Color(#colorLiteral(red: 1, green: 0, blue: 0.501960813999176, alpha: 1)),
                location: 0),
              .init(
                color: Color(
                  #colorLiteral(
                    red: 0.250980406999588, green: 0.8784313797950745, blue: 0.8156862854957581,
                    alpha: 1)), location: 1),
              .init(
                color: Color(#colorLiteral(red: 1, green: 0.5490196347236633, blue: 0, alpha: 1)),
                location: 1),
            ]),
            startPoint: UnitPoint(x: 0.8799999621639236, y: 0.10999996315336436),
            endPoint: UnitPoint(x: 0.04999997969675052, y: 0.9400000014643679)), lineWidth: 1))
      .padding(.bottom,150)

    }
    .padding()
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(
      Image("bgImage")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    )
    .ignoresSafeArea()

  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
