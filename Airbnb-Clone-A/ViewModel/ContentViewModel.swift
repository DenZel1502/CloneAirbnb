//
//  ContentViewModel.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 1/12/23.
//

import Foundation
import MapKit

class ContentViewModel: ObservableObject {
    @Published var airbnb: Airbnb = Airbnb(places: [Place]())
    
    //inicio
    func loadData() async {
            guard let url = URL(string: "https://api-airbnb-basic.onrender.com/airbnb") else {
                print("Invalid URL")
                return
            }
            
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                
                if let decoder = try? JSONDecoder().decode(Airbnb.self, from: data) {
                    DispatchQueue.main.async(execute: {
                        self.airbnb = decoder
                    })
                }
                
            } catch let error {
                print(error.localizedDescription)
            }
        }
}
