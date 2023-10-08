//
//  ContentView.swift
//  OrientationDemo
//
//  Created by iOSDev on 10/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var orientation = UIDeviceOrientation.portrait
    
    var body: some View {
        Group {
            if orientation.isPortrait {
                ZStack {
                    Color.green
                        .edgesIgnoringSafeArea(.all)
                    Text("Portrait")
                }
            } else if orientation.isLandscape {
                ZStack {
                    Color.cyan
                        .edgesIgnoringSafeArea(.all)
                    Text("Landscape")
                }
            } else if orientation.isFlat {
                ZStack {
                    Color.orange
                        .edgesIgnoringSafeArea(.all)
                    Text("Flat")
                }
            } else {
                ZStack {
                    Color.yellow
                        .edgesIgnoringSafeArea(.all)
                    Text("Unknown")
                }
            }
        }
        .onChangeOrientaion { newOrientation in
            orientation = newOrientation
        }
    }
}

