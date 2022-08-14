//
//  ContentView.swift
//  TugasAkhir
//
//  Created by Yusril on 10/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            OSStylingList()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Profile()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
