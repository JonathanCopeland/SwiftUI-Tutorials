//
//  ContentView.swift
//  Shared
//
//  Created by Jonathan Copeland on 2020/12/29.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: SandwichStore
    
    var body: some View {
        
        NavigationView{
            List {
                ForEach(store.sandwiches) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
                .onMove(perform: moveSandwiches)
                .onDelete(perform: deleteSandwiches)
                
                HStack {
                    Spacer()
                    Text("\(store.sandwiches.count) Sandwiches").foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Sandwiches")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Add", action: makeSandwich)
                }
                #if os(iOS)
                ToolbarItem(placement: .navigationBarTrailing){
                    EditButton()
                }
                #endif
            }

            Text("Select a sandwich")
                .font(.largeTitle)
        }
    }
    
    func makeSandwich() {
        withAnimation {
            store.sandwiches.append(Sandwich(name: "Patty Melt", ingredientCount: 3))
        }
    }

    func moveSandwiches(from: IndexSet, to: Int) {
        withAnimation {
            store.sandwiches.move(fromOffsets: from, toOffset: to)
        }
    }

    func deleteSandwiches(offsets: IndexSet) {
        withAnimation {
            store.sandwiches.remove(atOffsets: offsets)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(store: testStore)
        }
    }
}


