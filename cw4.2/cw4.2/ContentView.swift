//
//  ContentView.swift
//  cw4.2
//
//  Created by Rawaah Alanbaei on 29/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    // list
    @State var myGrocery = ["banana", "strawberry", "yogurt", "babybel cheese"]
    
    //State var for textfield + button
    @State var new = ""
    
    // delete chosen
    @Binding var choice : Int
    
    var body: some View {
        VStack{
            
            List(myGrocery, id:\.self){
                item in
                
                HStack{
                Image(item)
                        .resizable()
                        .frame(width: 50, height: 50)
                Text(item)
                }.onTapGesture {
                    choice = choice + 1}
            }
       
            // Bottom
            
            HStack{
                // + button
                Button {
                    myGrocery.append(new)
                } label: {
                    Image("add") .resizable()
                        .frame(width: 50, height: 50)
                        .padding()
                }
                
                // textfield
                TextField("New Item", text:$new)
                
                // - button
                Button {
                    myGrocery.remove(at: choice)
                } label: {
                    Image("remove") .resizable()
                        .frame(width: 50, height: 50)
                        .padding()
                }

            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

