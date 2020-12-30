//
//  SandwichCell.swift
//  Sandwiches
//
//  Created by Jonathan Copeland on 2020/12/30.
//

import SwiftUI

struct SandwichCell: View {
    
    var sandwich: Sandwich

    var body: some View {
        
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            Image(sandwich.thumbnailName)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct SandwichCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SandwichCell(sandwich: testData[0])
        }
    }
}
