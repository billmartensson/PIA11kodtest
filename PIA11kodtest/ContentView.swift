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
            //Uppgifter().kod1(mening: "Att programmera är skoj")
            //Uppgifter().kod1(mening: "När jag bygger exempelapplikationer så är koden fin")
            //Uppgifter().kod2(tal1: "sju", tal2: "tre", calctype: "plus")
            //Uppgifter().kod2(tal1: "två", tal2: "sju", calctype: "multiplikation")
            Uppgifter().kod3(siffror: [2,5,4,6,9,2])
            Uppgifter().kod3(siffror: [1,99,45,23,4,78,3])
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
