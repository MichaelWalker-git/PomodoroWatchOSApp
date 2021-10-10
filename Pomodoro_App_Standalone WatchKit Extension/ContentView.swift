//
//  ContentView.swift
//  Pomodoro_App_Standalone WatchKit Extension
//
//  Created by Michael Tran on 10/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var secondScreenShown = true
    @State var timeVal = 1
    
    var body: some View {
        VStack{
            Text("Start timer for \(timeVal) seconds")
            Picker(selection: $timeVal, label: Text("")){
                Text("1").tag(1)
                Text("5").tag(5)
                Text("10").tag(10)
                Text("15").tag(15)
            }
            NavigationLink(destination:
                            SecondView(
                                secondScreenShown: $secondScreenShown,
                                timerVal: timeVal
                            ),
                           isActive: $secondScreenShown, label: {Text("Go")}
            )
            
        }

    }
}

struct SecondView: View {
    @Binding var secondScreenShown: Bool
    @State var timerVal = 1
    var body: some View {
        Text("Time remaining")
            .font((.system(size: 14)))
        Text("\(timerVal)")
        Text("seconds")
            .font((.system(size: 14)))

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
