//
//  TimerContentViewModel.swift
//  TimerSample49
//
//  Created by cmStudent on 2022/07/12.
//

import Foundation
import Combine

final class TimerContentViewModel: ObservableObject {
    
    @Published var count = 0
    @Published var isTimerRunning = false
    
    private var cancellable: AnyCancellable?
    
    //スタートする処理
    func startCounting() {
        isTimerRunning = true
        cancellable = Timer.publish(every: 1.0, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                self.count += 1
            }
    }
    
    //ストップ処理
    func stopCounting() {
        isTimerRunning = false
        cancellable?.cancel()
    }
    
    //リセット処理
    func resetCount() {
        count = 0
    }
}
