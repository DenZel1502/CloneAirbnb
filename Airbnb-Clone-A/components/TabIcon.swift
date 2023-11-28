//
//  TabIcon.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 28/11/23.
//

import SwiftUI

struct TabIcon: View {
    var image: String
    var text: String
    var body: some View {
        VStack{
            SwiftUI.Image(image)
                .renderingMode(.template)
            SwiftUI.Text(text)
        }
    }
}

struct TabIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabIcon(image: "heart", text: "Wishlist")
    }
}
