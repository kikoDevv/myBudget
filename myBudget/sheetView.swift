//
//  sheetView.swift
//  myBudget
//
//  Created by Kiko on 2023-02-15.
//

import Foundation
import SwiftUI
struct secondVeiw: View {
    var body: some View{
        VStack{
            HStack{
                Button{
                    //action inkomst
                }label: {
                    Label("inkomst", systemImage: "dollarsign.square.fill")
                        .scaleEffect(1.2)
                        .frame(width: 150,height: 110)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(20)
                        .padding(5)
                }
                Button{
                    //action Hyra
                }label: {
                    Label("Hyra", systemImage: "creditcard.fill")
                        .scaleEffect(1.2)
                        .frame(width: 150,height: 110)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(20)
                        .padding(5)
                }
            }
            HStack{
                Button{
                    //action el faktura
                }label: {
                    Label("el faktrura", systemImage: "doc.text.below.ecg.fill")
                        .scaleEffect(1.2)
                        .frame(width: 150,height: 110)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(20)
                        .padding(5)
                }
                Button{
                    //action bil kostnad
                }label: {
                    Label("bil kostnad", systemImage: "car")
                        .scaleEffect(1.2)
                        .frame(width: 150,height: 110)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(20)
                        .padding(5)
                }
            }
            HStack{
                Button{
                    //action wifi
                }label: {
                    Label("wifi", systemImage: "wifi")
                        .scaleEffect(1.2)
                        .frame(width: 150,height: 110)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(20)
                        .padding(5)
                }
                Button{
                    //action wifi
                }label: {
                    Label("mobil", systemImage: "iphone")
                        .scaleEffect(1.2)
                        .frame(width: 150,height: 110)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(20)
                        .padding(5)
                }
            }
            HStack{
                Button{
                    //action Sl kort
                }label: {
                    Label("SL-kort", systemImage: "bus")
                        .scaleEffect(1.2)
                        .frame(width: 150,height: 110)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(20)
                        .padding(5)
                }
                Button{
                    //action CSN
                }label: {
                    Label("CSN", systemImage: "graduationcap.fill")
                        .scaleEffect(1.2)
                        .frame(width: 150,height: 110)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(20)
                        .padding(5)
                }
            }
        }
    }
}
