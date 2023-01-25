//
//  PlaceholderImage.swift
//  podcasts-app
//
//  Created by Deonte Kilgore on 1/24/23.
//

import SwiftUI

struct PlaceholderImage: View {
    var body: some View {
        ZStack {
            Color.purple
                .frame(width: 80, height: 80)
            
            Image(systemName: "waveform")
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 50, height: 50)
        }
        
    }
}

struct PlaceholderImage_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderImage()
    }
}
