//
//  Home.swift
//  Vic-Falls Scores
//
//  Created by Crown Sipho on 17/10/2025.
//



import SwiftUI

struct Home: View {
    var body: some View {
        ZStack{
            VStack(spacing: 15) {
                
                NavigationStack {
                    ZStack() {
                        
                        VStack {
                
                            
                            
                        }
                        
                        Image("cup")
                        
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fill)
                            .ignoresSafeArea()
                            .opacity(1.0)
                        
                        
                    }
                    
                }
                
            }
        }
        
    }
}
    
#Preview {
   Home()
}

