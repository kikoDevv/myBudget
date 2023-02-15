//
//  ContentView.swift
//  myBudget
//
//  Created by Kiko on 2023-02-13.
//

import SwiftUI

struct ContentView: View {
    @State var dec = [String:Int]()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(dec.sorted(by: >), id: \.key ){ key, value in
                    Text("\(key)                                \(value) Kr")
                }
            }
            .navigationBarItems(trailing: Button("add"){
                
            })
        }
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
