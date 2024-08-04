//
//  ContentView.swift
//  Question App
//
//  Created by Scholar on 4/27/24.
//
// pushing to GitHub test!

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 231/255, green: 198/255, blue: 255/255)
                    .ignoresSafeArea()
                
                VStack {
                    Text("✨")
                        .position(x: 310, y: 50)
                        .font(.system(size: 100))
                    
                    Text("Design your perfect day!!")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                        .padding()
                        .position(x: 175, y: 50)
                    
                    Text("✨")
                        .position(x: 90, y: -20)
                        .font(.system(size: 100))
                    
                    NavigationLink(destination: Question1()) {
                        Text("Let's go ✈️")
                            .foregroundStyle(Color.white)
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    .padding()
                }
                .padding()
            }
        }
    }

    

    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
