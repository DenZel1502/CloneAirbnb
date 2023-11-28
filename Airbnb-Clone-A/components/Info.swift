//
//  Info.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 28/11/23.
//

import SwiftUI

struct Info: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image("item1")
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
            .frame(width: 350)
            .background(.white)
            .cornerRadius(20)
        }
        .padding()
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
