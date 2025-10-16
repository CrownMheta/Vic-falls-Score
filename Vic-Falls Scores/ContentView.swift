//
//  ContentView.swift
//  Vic-Falls Scores
//
//  Created by Crown Sipho on 15/10/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
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
                            
                                .foregroundStyle(.white)
                        }
                        .offset(y: 90)
                        
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
                        .opacity(0.4)
                    
                    
                    
                    Text("Username")
                        .font(.title2)
                        .fontDesign(.serif)
                        .foregroundStyle(.black)
                        .offset(x: -135, y: -35)
                    
                    
                    
                    TextField (" Type your username", text: $username)
                        .textFieldStyle(.roundedBorder)
                        .offset(x: -1, y: 0)
                        .frame(width: 380, height: .infinity)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(style: StrokeStyle(lineWidth: 3))
                        )
                    
                    Text("Password")
                        .font(.title2)
                        .font(.title2)
                        .fontDesign(.serif)
                        .foregroundStyle(.black)
                        .offset(x: -135, y: 50)
                    
                TextField("password", text: $password)
                        .textFieldStyle(.roundedBorder)
                        .offset(x: -1, y: 85)
                        .frame(width: 380, height: .infinity)
                        .overlay( RoundedRectangle(cornerRadius: 8)
                        .stroke(style: StrokeStyle(lineWidth: 3)))
                      
                        
                    
                    
                }
            }
            
        }
    }
    


        #Preview {
            ContentView()
        }
    

