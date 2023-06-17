//
//  ContentView.swift
//  WelcomeApp
//
//  Created by scholar on 6/6/23.
//

import SwiftUI


struct ContentView: View {
    @State private var textTitle = "what is your name"
   @State private var name = ""
    var body: some View {
        VStack(spacing: 50) {
            Text(textTitle)
                .font(.title)
            TextField("type name here", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("submit name") {
                textTitle = "welcome, \(name)!"
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
