//
//  ContentView.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 50) {
                    Category(icon: "airplane.circle", text: "OMG!")
                    Category(icon: "beach.umbrella", text: "Beaches")
                    Category(icon: "house.and.flag", text: "Tiny Homes")
                    Category(icon: "figure.golf", text: "Golfing")
                    Category(icon: "photo.tv", text: "Amazing")
                }
            }.padding()
            
            Divider()
            
            List {
                Card()
                Card()
                Card()
            }
            .listStyle(.inset)
            .scrollIndicators(.hidden)
            .padding([.trailing, .leading])
            
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
