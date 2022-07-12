//
//  TimerContentView.swift
//  TimerSample49
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI

struct TimerContentView: View {
    
    @ObservedObject private var viewModel: TimerContentViewModel
    
    init(viewModel: TimerContentViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text("\(viewModel.count)")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
            
            Button("スタート") {
                viewModel.startCounting()
                
            }
            
            .disabled(viewModel.isTimerRunning)
            
            Button("ストップ") {
                viewModel.stopCounting()
                
            }
            
            .disabled(!viewModel.isTimerRunning)
            .padding()
            
            Button("リセット") {
                viewModel.resetCount()
                
            }
        }
    }
}

struct TimerContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimerContentView(viewModel: TimerContentViewModel())
    }
}
