//
//  ContentView.swift
//  Lyricist
//
//  Created by Hanzheng Li on 4/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            SavedSongsView()
                .preferredColorScheme(.dark)
                .navigationBarHidden(true)
        }
        .navigationViewStyle(.stack)
    }
}
