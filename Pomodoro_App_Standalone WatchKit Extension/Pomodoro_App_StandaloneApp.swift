//
//  Pomodoro_App_StandaloneApp.swift
//  Pomodoro_App_Standalone WatchKit Extension
//
//  Created by Michael Tran on 10/9/21.
//

import SwiftUI

@main
struct Pomodoro_App_StandaloneApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
