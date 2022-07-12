//
//  ContentView.swift
//  TimerSample49
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TimerContentView(viewModel: TimerContentViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
