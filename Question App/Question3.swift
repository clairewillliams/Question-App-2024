//
//  Question3.swift
//  Question App
//
//  Created by Scholar on 4/27/24.
//

import SwiftUI

struct Question3: View {

    @State private var sweetTreat = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 252/255, green: 246/255, blue: 189/255)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Pick an evening sweet-treat!")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundStyle(Color.gray)
                        .multilineTextAlignment(.center)
                    
                    Button("Cupcake") {
                        sweetTreat = "🧁"
                    }
                    
                    Button("Ice Cream") {
                        sweetTreat = "🍨"
                    }
                    
                    Button("Donut") {
                        sweetTreat = "🍩"
                    }
                    
                    Text(sweetTreat)
                        .padding(.all)
                        .font(.system(size: 100))
                    
                }
                .padding()
                .font(.title2)
                .buttonStyle(.bordered)
                .tint(Color(.gray))
                
                
            }
        }
    }
}

#Preview {
    Question3()
}
