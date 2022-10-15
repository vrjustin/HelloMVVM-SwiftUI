//
//  ContentView.swift
//  HelloMVVM
//
//  Created by Justin Maronde on 10/15/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var counterVM: CounterViewModel
    
    init() {
        counterVM = CounterViewModel()
    }
    
    var body: some View {
        VStack {
            Text(counterVM.premium)
                .foregroundColor(.red)
                .frame(width: 200, height: 200)
                .font(.largeTitle)
            
            Text("\(counterVM.value)")
                .font(.title)
            
            Button("Increment") {
                self.counterVM.increment()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
