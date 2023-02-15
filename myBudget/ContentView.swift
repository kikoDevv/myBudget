//
//  ContentView.swift
//  myBudget
//
//  Created by Kiko on 2023-02-13.
//

import SwiftUI

struct ContentView: View {
    @State var listan = [String:String]()
    @State var showSecondView:Bool = false
    @State var titel:String=""
    @State var siffran:String=""
    @State var btPressed:Bool = false
    
    
    
    var body: some View {
        ZStack {
            NavigationView{
                List{
                    ForEach(listan.sorted(by: >), id: \.key ){ key, value in
                        Text("\(key)                                \(value)kr")
                    }
                    .onDelete(perform: delete)
                }
                .sheet(isPresented: $showSecondView, content: {
                    secondVeiw(titel: $titel, Siffra: $siffran, btPressed: $btPressed)
                })
                .navigationBarItems(trailing: Button("add"){
                    showSecondView.toggle()
                })
            }
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
       // secondVeiw(titel: .constant("xx"), Siffra: .constant("0"))
        ContentView()
    }
}
