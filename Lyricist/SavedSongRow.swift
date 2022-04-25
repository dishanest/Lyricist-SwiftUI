//
//  SavedSongRow.swift
//  Lyricist
//
//  Created by Hanzheng Li on 4/13/22.
//

import SwiftUI

struct SavedSongRow: View {
    // TODO: binding var, toggle favorite
    let song: Song
    
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
            
            Image(systemName: "heart")
                .foregroundColor(.yellow)
                .frame(width: 22, height: 22)
        }
        .padding(.horizontal)
    }
}
