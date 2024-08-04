//
//  Question2.swift
//  Question App
//
//  Created by Scholar on 4/27/24.
//

import SwiftUI

struct Question2: View {
    
    @State private var place = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 169/255, green: 222/255, blue: 249/255)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Where are you going today?")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                    
                    Button("Art Museum") {
                        place = "🖼️"
                    }
                    
                    Button("The park") {
                        place = "🐿️"
                    }
                    
                    Button("A Cafe") {
                        place = "☕️"
                    }
                    
                    Text(place)
                        .padding(.all)
                        .font(.system(size: 100))
                    
                }
                .padding()
                .font(.title2)
                .buttonStyle(.bordered)
                .tint(Color(.white))
                
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: Question3()) {
                            Text("What next?")
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
    Question2()
}
