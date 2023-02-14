//
//  ContentView.swift
//  myBudget
//
//  Created by Kiko on 2023-02-13.
//

import SwiftUI

struct ContentView: View {
    @State var inkomst:Int = 0
    @State var budget:Int = 0
    @State var wifi:Int = 0
    @State var mobil:Int = 0
    @State var hyra:Int = 0
    @State var försäkring:Int = 0
    @State var SL_kort:Int = 0
    
    @State var vissaSheet:Bool = false
    
    var body: some View {
        NavigationView{
            List{
                if inkomst > 0 {
                    Text("din inkomst är                                    \(inkomst)Kr")
                }
                if budget > 0 {
                    Text("din inkomst är                                    \(budget)Kr")
                }
                if wifi > 0 {
                    Text("din inkomst är                                    \(wifi)Kr")
                }
                if mobil > 0 {
                    Text("din inkomst är                                    \(mobil)Kr")
                }
                if hyra > 0 {
                    Text("din inkomst är                                    \(hyra)Kr")
                }
                if försäkring > 0 {
                    Text("din inkomst är                                    \(försäkring)Kr")
                }
                if SL_kort > 0 {
                    Text("din inkomst är                                    \(SL_kort)Kr")
                }
                
            }
            .sheet(isPresented: $vissaSheet, content: {
                secondView()
            })
            .navigationBarItems(trailing: Button("add"){
                vissaSheet.toggle()
            })
        }
    }
    struct secondView: View {
        @State var namnList = ["inkomst","budget","hyra","wifi","mobile","försäkring","Sl-Kort"]
        
        var body: some View{
            VStack{
                Button("add inomst"){
                    
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                Button("add hyra"){
                    
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                Button("add wifi"){
                    
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                Button("add mobile"){
                    
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                Button("add Sl-Kort"){
                    
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                Button("add försäkring"){
                    
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                
            }
        }
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
