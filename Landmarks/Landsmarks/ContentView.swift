//
//  ContentView.swift
//  Landsmarks
//
//  Created by Jonathan Copeland on 2020/06/20.
//  Copyright © 2020 Jonathan Copeland. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300.0)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Voortrekker Monument")
                    .font(.title)
                HStack {
                    Text("Pretoria")
                        .font(.subheadline)
                    Spacer()
                    Text("Gauteng")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
