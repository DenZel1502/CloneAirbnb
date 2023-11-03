//
//  Category.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 3/11/23.
//

import SwiftUI

struct Category: View {
    
    var icon: String
    var text: String
    
    var body: some View {
        VStack{
            Image(systemName:icon)
                .font(.system(size: 30))
                .aspectRatio(contentMode: .fill)
                .frame(width: 35, height: 35)
            Text(text)
                .padding(.top, 2)
                .font(.system(size: 12, weight: .semibold))
        }
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category(icon: "airplane.circle", text: "OMG!")
    }
}
