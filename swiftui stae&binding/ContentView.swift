//
//  ContentView.swift
//  swiftui stae&binding
//
//  Created by andyhaz on 3/5/24.
//

import SwiftUI

struct customButton1: View {
    
    @Binding var placeHolder: String
    
    var body: some View {
        VStack {
            Button("b1"){self.placeHolder = "update" }
        }
    }
}

struct customButton2: View {
    
    @Binding var placeHolder: String
    
    var body: some View {
        VStack {
           // Button("b1"){self.placeHolder = "update" }
            Text("b2")
                .frame(width: 50,height: 50)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                .background(.blue)
                .onTapGesture {
                    self.placeHolder = "update2"
                }
        }
    }
}

struct ContentView: View {
    
    @State var plaeHolder = "plae holder"
    
    var body: some View {
        VStack {
            Text("\(self.plaeHolder)")
            customButton1(placeHolder: self.$plaeHolder)
            customButton2(placeHolder: self.$plaeHolder)
        }
    }
}

#Preview {
    ContentView()
}
//
