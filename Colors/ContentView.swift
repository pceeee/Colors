//
//  ContentView.swift
//  Colors
//
//  Created by Lorenzo Migani on 01/11/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme

    @State private var background: MeshGradient = MeshGradient(width: 2, height: 2, points: [
        [0, 0], [1, 0],
        [0, 1], [1, 1]
    ], colors: [
        .pink, .lilla,
        .lightBlue, .purple
    ])
    
    @State private var backgroundDark: MeshGradient = MeshGradient(width: 2, height: 2, points: [
        [0, 0], [1, 0],
        [0, 1], [1, 1]
    ], colors: [
        .ivory, .zenith,
        .blue, .ivory
    ])
    
    var body: some View {
        NavigationStack{
            ZStack{
                Group{
                    if colorScheme == .light{
                        background
                    } else {
                        backgroundDark
                    }
                }
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    ContentView()
}
