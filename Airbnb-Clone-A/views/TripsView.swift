//
//  TripsView.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 28/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -12.0450947, longitude: -76.9545933), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            //Card start
            VStack {
                Spacer()
                HStack {
                    Image("image")
                        .resizable()
                        .frame(width: 90)
                        .cornerRadius(10)
                        .padding(.vertical, 15)
                        .padding(.leading,20)
                        
                        
                    VStack(alignment: .leading, spacing:4) {
                        HStack {
                            Spacer()
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 11, height: 11)
                                .aspectRatio(contentMode: .fit)
                            Text("4.98(116)")
                                .font(.caption)
                        }
                        Text("Venice Canal Tour")
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        Text("Hosted by Shaun")
                            .font(.caption)
                            .fontWeight(.light)
                            .padding(.leading)
                        Spacer()
                    }
                    .padding(.top, 20)
                    Spacer()
                    VStack {
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.top, 15)
                        Spacer()
                    }
                    .padding(.trailing)
                }
                .frame(height: 120)
                .background(.white)
                .cornerRadius(20)
            }
            //card end
            .padding()
            
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
