//
//  CircleImage.swift
//  Landsmarks
//
//  Created by Jonathan Copeland on 2020/06/20.
//  Copyright © 2020 Jonathan Copeland. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Voortrekker")
            .padding(50.0)
            .frame(width: 250.0, height: 250.0)
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
