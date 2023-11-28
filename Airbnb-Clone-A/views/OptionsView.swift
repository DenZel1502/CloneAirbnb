//
//  OptionsView.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 28/11/23.
//

import SwiftUI

struct OptionsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack{
                HStack{
                    Options(texto: "Activity type")
                    Options(texto: "Price")
                    Options(texto: "Languaged offert")
                    Options(texto: "Activity type")
                }
            }
            .frame(height: 80)
            .background(.white)
        }
    }
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView()
    }
}
