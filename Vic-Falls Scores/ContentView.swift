//
//  ContentView.swift
//  Vic-Falls Scores
//
//  Created by Crown Sipho on 15/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack() {
                
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 600, height: 450)
                        .clipShape(Circle())
                        .offset(x: -10 , y: -190)
                    
                  NavigationLink(destination:  FirstPage()) {
                        Text ("  Get started  ")
                            .font(.callout)
                            .bold()
                            .background(.black)
                            .cornerRadius(20)
                            .offset(y: 90)
                            .foregroundStyle(.white)
                    }
                    
                    
                    NavigationLink(destination: SignUpView()) {
                        Text("Sign Up")
                            .bold()
                            .foregroundStyle(.blue)
                          
                    }
                    .offset(x: -140, y: 150)
                    
                    NavigationLink(destination: Password()) {
                        Text ("Forgot password")
                            .foregroundStyle(.blue)
                            .bold()
                        
                    }
                    .offset(x: 110, y: 130)
                    
                }
                
                Image("cup")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 607, height: 680)
                    .opacity(0.3)
                
                
            }
        }
        
    }
}
        

        #Preview {
            ContentView()
        }
    

