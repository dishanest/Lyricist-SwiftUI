//
//  SavedSongRow.swift
//  Lyricist
//
//  Created by Hanzheng Li on 4/13/22.
//

import SwiftUI

struct SavedSongRow: View {
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
        }
        .padding(.horizontal)
    }
}
