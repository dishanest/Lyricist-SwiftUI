//
//  ContentView.swift
//  Lyricist
//
//  Created by Hanzheng Li on 4/13/22.
//

import SwiftUI

struct SavedSongsView: View {
    @State var filterFavorites: Bool = false
    @State var selectedSong: Song?
    @State var songs: [Song] = Song.data
    
    private var header: some View {
        VStack(spacing: 10) {
            HStack {
                Spacer()
                
                ZStack {
                    Text("LYRICIST")
                        .font(.system(.title, design: .rounded).weight(.semibold))
                        .kerning(7)
                        .foregroundColor(.yellow)
                    Text("LYRICIST")
                        .font(.system(.title, design: .rounded).weight(.semibold))
                        .kerning(7)
                        .foregroundColor(.black)
                        .offset(x: 2, y: -2)
                }
                
                Spacer()
                    .frame(width: 10)
                
                Button {
                    filterFavorites.toggle()
                } label: {
                    Image(systemName: filterFavorites ? "heart.fill" : "heart")
                        .foregroundColor(.yellow)
                }
                
                Spacer()
            }
            
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
            
            Spacer()
                .frame(height: 10)
        }
    }
    
    private var songsList: some View {
        ScrollView(.vertical, showsIndicators: true) {
            ForEach($songs, id: \.hashValue) { song in
//                SavedSongRow(song: $song)
//                    .onTapGesture {
//                        print("yeet")
//                        selectedSong = song
//                    }
                if song.wrappedValue.isFavorite || !filterFavorites {
                    NavigationLink(destination: SongLyricsView(song: song)) {
                        SavedSongRow(song: song)
                    }
                }
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            header
            songsList
        }
    }
}
