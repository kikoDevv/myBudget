//
//  sheetView.swift
//  myBudget
//
//  Created by Kiko on 2023-02-15.
//

import Foundation
import SwiftUI
struct secondVeiw: View {
    @Binding var titel:String
    @Binding var Siffra:String
    @Binding var btPressed:Bool
    
    
    @State var inputTitel:String = ""
    @State var inputSiffra:String=""
    var body: some View{
        VStack{
            TextField("skriv katagorin", text: $inputTitel)
                .padding()
                .background(Color.gray.opacity(0.4))
            TextField("skriv siffran", text: $inputSiffra)
                .padding()
                .background(Color.gray.opacity(0.4))
            Button("add"){
                titel = inputTitel
                Siffra = inputSiffra
                btPressed = true
            }
            
        }
    }
}
