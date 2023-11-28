//
//  Title.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 28/11/23.
//

import SwiftUI

struct Title: View {
    var body: some View {
        VStack(){
            HStack{
                Text("Unforgettable activities hosted by locals")
                    .font(.system(size: 34, weight: .semibold))
                    .foregroundColor(.black)
                    .padding(20)
                Spacer()
            }
            .background(.white)
        }
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title()
    }
}
