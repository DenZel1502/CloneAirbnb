//
//  InfoView.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 28/11/23.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack {
                
                    HStack() {
                        Info()
                        Info()
                        Info()
                    }
                }.padding([.horizontal])
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
