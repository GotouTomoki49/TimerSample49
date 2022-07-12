//
//  TimerSample49App.swift
//  TimerSample49
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI

@main
struct TimerSample49App: App {
    var body: some Scene {
        WindowGroup {
            TimerContentView(viewModel: TimerContentViewModel())
        }
    }
}
