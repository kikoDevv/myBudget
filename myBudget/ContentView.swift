//
//  ContentView.swift
//  myBudget
//
//  Created by Kiko on 2023-02-13.
//

import SwiftUI

struct ContentView: View {
    @State var dec = [String:String]()
    @State var showSheet:Bool = false
    @State var key = String()
    @State var value = String()
    
    var body: some View {
        VStack{
            Text(key)
            ForEach(dec.sorted(by: >), id: \.key){ key, value in
                Text(key)
                Text(value)
            }
            Button("add"){
                dec[key] = "sfds"
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(20)
            .offset(y:200)
            
            
            Button("sheet"){
                showSheet.toggle()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(20)
            .sheet(isPresented: $showSheet) {
                secondView(kkey: $key)
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    struct secondView:View{
        @Binding var kkey:String
        var body: some View{
            TextField("key", text: $kkey)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
