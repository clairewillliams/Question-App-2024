//
//  Question1.swift
//  Question App
//
//  Created by Scholar on 4/27/24.
//

import SwiftUI

struct Question1: View {
    
    @State private var activity = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 250/255, green: 210/255, blue: 225/255)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Pick a morning activity!")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                    
                    Button("Yoga") {
                        activity = "🧘‍♀️"
                    }
                    
                    Button("Journaling") {
                        activity = "📓"
                    }
                    
                    Button("Bubble Bath") {
                        activity = "🛁"
                    }
                    
                    Text(activity)
                        .padding(.all)
                        .font(.system(size: 100))
                    
                }
                .padding()
                .font(.title2)
                .buttonStyle(.bordered)
                .tint(Color(.white))
                
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: Question2()) {
                            Text("Take me to a new question!")
                                .foregroundStyle(Color.white)
                                .fontWeight(.semibold)
                        }
                    }
                }
                
                
            }
        }
    }
}

#Preview {
    Question1()
}
