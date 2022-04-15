//
//  SavedSongRow.swift
//  Lyricist
//
//  Created by Hanzheng Li on 4/13/22.
//

import SwiftUI

struct SavedSongRow: View {
    @Binding var song: Song
    
    var body: some View {
        HStack(alignment: .center) {
            Image(song.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 45, height: 45)
            
            VStack(alignment: .leading) {
                Text(song.title)
                    .font(.subheadline)
                Text(song.artistNames.joined(separator: ", "))
                    .font(.caption)
            }
            .foregroundColor(.white)
            
            Spacer()
            
            Button {
                song.isFavorite.toggle()
            } label: {
                Image(systemName: song.isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(.yellow)
                    .frame(width: 22, height: 22)
            }
        }
        .padding(.horizontal)
    }
}
