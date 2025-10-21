//
//  FirstPage.swift
//  Vic-Falls Scores
//
//  Created by Crown Sipho on 16/10/2025.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        
        NavigationStack {
            ZStack() {
                
                VStack {
                    
                    
                    
                    
                    
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 600, height: 450)
                        .clipShape(Circle())
                        .offset(x: -6 , y: -350)
                    
                    
                    
                        .offset(y: 90)
                    
                    
                }
                
                Image("cup")
                
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .opacity(0.2)
                    .ignoresSafeArea()
                
                NavigationLink(destination: Home()) {
                    
                    
                    Text ("   kick Off   ")
                        .font(.callout)
                        .bold()
                        .foregroundStyle(.white)
                        .background(.black)
                        .cornerRadius(20)
                      
                    
                    
                    
                    
                    
                    
                }
                .offset(y: 100)
                
                Text("Every goal, every game we Crown it")
                    .font(.caption)
                    .bold()
                
               
            }
        }
        
    }
}
#Preview {
    Home()
}

