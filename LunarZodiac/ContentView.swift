//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Tomas Liivak on 2/2/26.
//

import SwiftUI

struct ContentView: View {
    @State private var animalNames = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
    @State private var currentYear = 2026
    @State private var imageNumber = 6
    
    var body: some View {
        VStack {
            Text(String(currentYear))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.red)
            Spacer()
            Image(animalNames[imageNumber])
                .resizable()
                .scaledToFit()
            Text("\(animalNames[imageNumber])")
                .font(.largeTitle)
                .fontWeight(.black)
            HStack{
                Button {
                    imageNumber -= 1
                    currentYear -= 1
                    if imageNumber < 0 {
                        imageNumber = 11
                    }
                } label: {
                    Image(systemName: "chevron.left")
                }
                Spacer()
                Button {
                    imageNumber += 1
                    currentYear += 1
                    if imageNumber > 11 {
                        imageNumber = 0
                    }
                } label: {
                    Image(systemName: "chevron.right")
                }
            }
            .font(.largeTitle)
            .fontWeight(.black)
            .buttonStyle(.glassProminent)
            .tint(.red)
            .foregroundStyle(.white)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
