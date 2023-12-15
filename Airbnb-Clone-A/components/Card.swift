//
//  Card.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 3/11/23.
//

import SwiftUI

struct Card: View {
    let place : Place
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            
            AsyncImage(url: URL(string: place.image_url)){ image in image.resizable()
                .frame(width: 342, height: 323)
                .cornerRadius(16)
            } placeholder: {
                ProgressView()
            }
            
            HStack {
                Text("\(place.name), \(place.location.city)")
                    .fontWeight(.bold)
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                        .font(.system(size: 11))
                    Text("\(place.rating)")
                }
            }

            Text("\(place.location.country)")
                .fontWeight(.light)
                .foregroundStyle(.gray)
            Text("\(place.date)")
                .fontWeight(.light)
                .foregroundStyle(.gray)
            Text("$\(place.price)")
                .fontWeight(.semibold)
        }.padding()
    }
}


struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(place: Place(
            name: "Nombre de hotel",
            rating: 4.5,
            location: Location(country: "Pais", city: "Ciudad"),
            image_url: "https://img.freepik.com/vector-gratis/fondo-fachada-hotel-plana_23-2148157379.jpg",
            date: "10-12-25",
            price: 44
        ))
    }
}
