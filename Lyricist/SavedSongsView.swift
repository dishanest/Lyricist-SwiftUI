//
//  ContentView.swift
//  Lyricist
//
//  Created by Hanzheng Li on 4/13/22.
//

import SwiftUI

struct SavedSongsView: View {
    let songs: [Song] = Song.data
    
    private var title: some View {
        Text("LYRICIST")
            .font(.largeTitle)
            .foregroundColor(.yellow)
    }
    
    private var subtitle: some View {
        HStack {
            Spacer()
            
            Text("SAVED SONGS")
                .font(.subheadline)
                .foregroundColor(.white)
            
            Spacer()
            
            Rectangle()
                .frame(width: 230, height: 2)
                .foregroundColor(.white)
            
            Spacer()
        }
    }
    
    private var songsList: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading) {
                ForEach(songs, id: \.self) { song in
                    NavigationLink {
                        SongLyricsView(song: song)
                    } label: {
                        SavedSongRow(song: song)
                    }
                }
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            title
            subtitle
                .padding(.vertical, 10)
            songsList
        }
    }
}
