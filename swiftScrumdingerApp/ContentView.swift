//
//  ContentView.swift
//  swiftScrumdingerApp
//
//  Created by nelson tapia on 07-09-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                ProgressView(value: 10, total: 15)
                HStack{
                    VStack {
                        Text("Segundos Transcurridos")
                        Label("300", systemImage: "hourglass.tophalf.fill")
                    }
                    VStack {
                        Text("Segundos Restantes")
                        Label("600", systemImage: "hourglass.bottomhalf.fill")
                    }
                }
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
