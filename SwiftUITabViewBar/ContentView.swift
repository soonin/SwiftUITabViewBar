//
//  ContentView.swift
//  SwiftUITabViewBar
//
//  Created by Pooya on 2021-02-22.
//  Copyright © 2021 Pooya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        ZStack(alignment: .topTrailing) {
            TabView(selection: $selection){
                Text("Home Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                }//tabItem
                    .tag(0)
                
                Text("BookMark Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "book.circle.fill")
                        Text("BookMark")
                }//tabItem
                    .tag(1)

                Text("Video Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "video.circle.fill")
                        Text("Video")
                }//tabItem
                    .tag(2)

                Text("Profile Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                        Text("Profile")
                }//tabItem
                .tag(3)
                    
                }//onAppear
                
                .accentColor(.green)
                .onAppear() {
                        UITabBar.appearance().barTintColor = .white
                }
                    Button(action: {
                        self.selection = (self.selection + 1) % 4
                    }) {
                        Text("Next")
                            .font(.system(.headline, design: .rounded))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(10.0)
                            .padding()
                    } //action
        } //ZStack
    }//var body
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
