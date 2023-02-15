//
//  ContentView.swift
//  myBudget
//
//  Created by Kiko on 2023-02-13.
//

import SwiftUI

struct ContentView: View {
    @State var listan = [String:String]()
    @State var listView:Bool = false
    @State var inkomst = ""
    
    
    var body: some View {
        ZStack{
            if listView==false{
                VStack{
                    Text("hallow börja med din inkomst")
                    TextField("skriv din inkomst", text: $inkomst)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(20)
                        .padding()
                    Button("Nästa"){
                        listView.toggle()
                    }
                    .background(Color.gray.opacity(0.2))
                }
            }
            //==================list view=================
            if listView{
                NavigationView{
                    List{
                        //==========Section 1==============
                        Section (header: Text("inkomst")){
                            VStack{
                                HStack{
                                    Text("inkomst")
                                    Spacer()
                                    Text("sparande")
                                }
                                HStack{
                                    Text("\(inkomst) Kr")
                                    Spacer()
                                    Text("sifror")
                                }
                            }
                        }
                        //===================section2=================
                        Section (header: Text("gatakory")){
                            ForEach(listan.sorted(by: >), id: \.key ){ key, value in
                                Text("\(key)                                \(value)kr")
                            }
                            .onDelete(perform: delete)
                        }
                    }
                    .navigationBarItems(leading: EditButton())
                }
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
        ContentView()
    }
}
