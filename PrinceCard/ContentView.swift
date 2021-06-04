//
//  ContentView.swift
//  PrinceCard
//
//  Created by Prince Carl Velasco on 6/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal).ignoresSafeArea(.all)
            VStack {
                Image("prince")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Prince Velasco")
                    .colorInvert()
                    .font(Font.custom("Pacifico-Regular", size: 40))
                Text("Mobile Developer")
                    .colorInvert()
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "(+63)946 165 3691", imageName: "phone.fill")
                InfoView(text: "princevelasco16@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 12 Pro Max")
    }
}
