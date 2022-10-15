//
//  CounterViewModel.swift
//  HelloMVVM
//
//  Created by Justin Maronde on 10/15/22.
//

import Foundation
import SwiftUI

class CounterViewModel: ObservableObject {
    
    @Published private var counter: Counter = Counter()
    
    var value: Int {
        counter.value
    }
    
    var premium: String {
        return counter.isPremium ? "PREMIUM" : ""
    }
    
    func increment() {
        counter.increment()
    }
    
}
