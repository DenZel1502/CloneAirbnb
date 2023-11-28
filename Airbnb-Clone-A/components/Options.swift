//
//  options.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 28/11/23.
//

import SwiftUI

struct Options: View {
    
        var texto: String
        var body: some View {
            VStack{
                HStack{
                    Text(texto)
                    Image("arrow1")
                        .resizable()
                        .frame(width: 11, height: 12)
                        .aspectRatio(contentMode: .fit)
                    
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay (
                    Capsule (style: .continuous)
                        .stroke (Color.gray.opacity(0.2), lineWidth: 1))
            }

        }
    }


struct Options_Previews: PreviewProvider {
    static var previews: some View {
        Options(texto: "Texto")
    }
}
