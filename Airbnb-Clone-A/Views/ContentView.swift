//
//  ContentView.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var contentViewModel = ContentViewModel()
    
    
    
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
            
            List(contentViewModel.airbnb.places, id: \.name) { place in
                            Card(place: place)
                        }
                        .listStyle(.inset)
                        .scrollIndicators(.hidden)
                        .task {
                            await contentViewModel.loadData()
                        }
            
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
