//
//  Profile.swift
//  TugasAkhir
//
//  Created by Yusril on 14/08/22.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 14){
                Image("Foto")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                VStack(spacing:5) {
                    Text("Yusril Chalif Arrahman")
                        .font(.largeTitle)
                        .bold()
                    Text("Game and iOS Developer")
                        .font(.title)
                }
                
                Divider()
                
                Text("Hi, I'm Yusril Chalif Arrahman. I am an Android and iOS developer. I like to learn new things every day.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 20.0)
            }
            .padding(.vertical, 30.0)
        }
        .padding()
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
