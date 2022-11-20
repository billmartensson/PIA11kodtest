//
//  ContentView.swift
//  PIA11kodtest
//
//  Created by Bill Martensson on 2022-11-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
        }
        .onAppear() {
            //Uppgifter().kod1(mening: "")
            //Uppgifter().kod2(tal1: "", tal2: "", calctype: "")
            //Uppgifter().kod3(siffror: [])
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
