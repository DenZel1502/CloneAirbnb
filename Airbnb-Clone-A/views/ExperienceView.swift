//
//  ExperienceView.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 28/11/23.
//

import SwiftUI

struct ExperienceView: View {
    var body: some View {
        VStack{
            OptionsView()
            Title()
            ScrollView(){
            ZStack{
                Image("item3")
                    .resizable()
                    .frame(height: 500)
                InfoView()
            }
            HStack{
                Text("Happening Today")
                    .font(.system(size: 33, weight: .semibold))
                    .foregroundColor(.black)
                Image("arrow2")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .aspectRatio(contentMode: .fit)
            }
    }
}
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView()
    }
}
