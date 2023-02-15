//
//  ContentView.swift
//  myBudget
//
//  Created by Kiko on 2023-02-13.
//

import SwiftUI

struct ContentView: View {
    @State var listan = [String:Int]()
    @State var showSecondView:Bool = false
    var body: some View {
        NavigationView{
            List{
                ForEach(listan.sorted(by: >), id: \.key ){ key, value in
                    Text("\(key)                                \(value) Kr")
                }
                .onDelete(perform: delete)
            }
            .sheet(isPresented: $showSecondView, content: {
                secondVeiw()
            })
            .navigationBarItems(trailing: Button("add"){
                showSecondView.toggle()
            })
        }
    }
    //================funktioner===============================
    func delete(at offsets: IndexSet){
        if let ndx = offsets.first {
            let item = listan.sorted(by: >)[ndx]
            listan.removeValue(forKey: item.key)
        }
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        secondVeiw()
    }
}
