//
//  ContentView.swift
//  SwiftUI Tutorial: Working with Toggle
//
//  Created by Alvin Sosangyo on 02/10/22.
//


import SwiftUI

struct ContentView: View {

    @State private var darkMode: Bool = false

    var body: some View {

        ZStack {

            if darkMode == true {
                Color.black.ignoresSafeArea(.all)
            }
            
            Toggle(isOn: $darkMode) {
                Text("Dark Mode")
                    .font(.title3)
                    .fontWeight(.black)
                    .foregroundColor(darkMode ? .white : .black)
            }
            .tint(.purple)
            //.toggleStyle(.button)
            .padding()

        } //ZStack

    } //body

} //ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

