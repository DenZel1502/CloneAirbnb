//
//  MainView.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 21/11/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    VStack{
                        Image("magnifing")
                            .renderingMode(.template)
                        Text("Explore")
                    }
                }
            WishlistView()
                .tabItem{
                    VStack{
                        Image("heart")
                            .renderingMode(.template)
                        Text("Wishlist")
                    }
                }
            TripsView()
                .tabItem{
                    VStack{
                        Image("logo-icon")
                            .renderingMode(.template)
                        Text("Map")
                    }
                }
            InboxView()
                .tabItem{
                    VStack{
                        Image("inbox")
                            .renderingMode(.template)
                        Text("Inbox")
                    }
                }
            ProfileView()
                .tabItem{
                    VStack{
                        Image("profile")
                            .renderingMode(.template)
                        Text("Profile")
                    }
                }
        }
        .accentColor(Color("Primary-airbnb"))
        .onAppear {
            UITabBar.appearance().backgroundColor = UIColor.white}
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
